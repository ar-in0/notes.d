# Thesis Notes
- "message FIFO queues organized into oriented edges between chip (controller) drivers and CAN users"
- "bus aribitration priority inversion", implementation challenges for the priotity class solution
- Full utilization of CAN controller, under different application requirements
- "dynamic redistribution of CAN transmission buffers to priority classes", hw fifo utilization under ordering req 

**CAN BUS** aka **CAN Protocol**
Communication protocol+physical bus layout used to communicate between automotive computation units, also in realtime control 



# RTEMS Notes
- "preemptive round robin scheduling, SMP"
- "static (compile time) and dynamic (run-time) initialization of the semaphore"
- " RTEMS implements mutual exclusion with self-contained objects"


Q. How many (hw) FIFOs does a CAN controller have?



# General Concepts to Look Up:
- Generic Bus Related: Medium Access control, Data Collisions, Collision Resolution (occurs during "arbitration" phase)
- How exactly does the length of the bus influence the message transmit speed? What do arbitration speed and datarate speeds measure? (in CANFD, CAN XL bitrate switching bw arbitration phase, data phase)
- What exactly is a FIFO edge in this context?
- carrier-sense, multiple-access protocol with collision detection and arbitration on message priority (CSMA/CD+AMP)
- Bit-Fields and endianness in relation to order of signal transmission

# Generic Notes
* A bus is "driven" by the message identifier being sent. Messages are sent in serial order, MSB first. Multiple controllers
may send messages to common bus at the same instant. The bus is designed to have 2 states, dominant = logical 0, recessive = logical 1.
To resolve a collision, the bits to be transferred are compared, and the controller sending the message containing the first logical 0
"dominates" the bus, and that message is given priority. (the other controller "loses" the arbitration) 
Q. Once priority is decided, does a single message send to completion? DONE


* Messages on CAN bus are sent in units called Frames, fixed formats (standard, extended). CAN versions differ based on the frame specification.
1. Original CAN = "CAN CC": Limited speed, 1Mbit/s for 50M bus length
2. CAN with "Flexible datarate" = CAN FD: better speed, upto 8MBit/s for 50M bus length. Automotive standards set lower values.
3. CAN with even larger data payload (2018): CAN XL, 2048 byte data field + bitrate switching. (CAN XL not yet implemented in rtems, future wor

* SocketCAN: Linux CAN stack built on the kernel sockets API, offers TCP/IP semantics (open(), close(), send(), etc.). Also implements CANXL
- Not useful to port SocketCAN to rtems, needs a network stack which is heavy. RTEMS CAN does not need to be as generic as the socketAPI
- RTEMS CAN apps communicate with the driver via standard POSIX API, ioctls

* FIFO Queues are managed by the driver that exists between app and controller [appA write()]--driver->[controllerA]--bus_arbitration/transmit-->[controllerB]--driver-->[appB read()]
Q. How man FIFOs are invlved in the single-app, single controller scenario?


https://www.autopi.io/blog/can-bus-explained/
* CAN Bus is specifically designed for control plane communications: Offers predictable message timings, error-checking+ retransmit (coompnent of "reliable" comms).
- Too slow for high-data rate streams such as raw camera, lidar, radar data (automotive ethernet is more appropriate).
- Strong interference can affect system functioning (error detection -> multiple retrials flooding the bus).
Q. How is strong interference generated? 

https://www.ti.com/lit/an/sloa101b/sloa101b.pdf?ts=1773039107213&ref_url=https%253A%252F%252Fwww.google.com%252F

* The bus arbitration procedure in CAN bus occurs at every node, ~independently.
- The CAN controller (i.e. a node) monitors every bit it sends to the shared bus. Each CAN controller also receives broadcast messages (bits) from the other CAN nodes. 
- During CAN bus operation, every node compares the received bit with its last transmitted bit, 
and decides whether to continue sending the message or give up the bus. 
- The winning node of the arbitration then continues sending its message to completion, and since each node stores its "failed" transmission, wait for the "intermission" period, then the nodes do arbitration with the same message in the next round. 
- The ID numbers can be assigned to (messages/nodes?) to set a priori a dominance order for messages. (there are some practical issues tho, see priority inversion)
Q. If IDs are assigned to messages, what happens when multiple nodes send the same priority message simultaneously?
Q. "Driver Input" and "Receiver output": What are these? DONE
- receiver on the transceiver consstantly monitors CANH - CANL. if mutliple nodes set 
CAH to 3.5V (and CAN L to 1.5V), imagine 2 streams of pulses - CAN H and CANL. Its possible that
some nodes send CANL = 2.5 unchanged while others are sending CANL = 1.5V changed. What happens in this case?
- See: https://claude.ai/chat/e063c23f-5596-4e8e-b701-16823973281f for a possible answer

* CANH, CANL and logic levels
- "recessive mode": CANH = CANL = ~2.5V, voltage difference = 0, logic 1
- "dominant mode": CAH=3.5V, CANL = 1.5V (TX input to transceiver is interpreted, CANH and CANL vltages are set appropriately (CANH +1, CANL -1) by transceiver driver input) - here, Voltage diff = 2.5V, logic 0



# Embedded Systems basics
**Pull Ups/Pull Downs**
Pull ups/downs: To set a default value for a pin (i.e. value that it has when its not connected to anything is electrical noise)
- "Weak" pull: The value is not binding. A suffienctny "strong" connected component may change the value of that pin.
1. How does connecting a component change pin value? : connecting a wire attaced to component, to a pin gives that path the voltage of the component (ex. GND = 0). 
Weak pull up (pulled high): Makes the pin value =1, but only weakly, i.e. can be changed by low output from cpu.
- Pulling a pin passively high -> in a circuit, the outut will be high unless changed. In CAN, logic 1 is recessive, so the node outputting "recessive"
in default state is the right semantics. Switches to 0 i.e. dominant in case theres some change.


GPIO as input: pin needs to be pulled to avoid cpu reading garbage value when unconnected.
GPIO as output: pull not required, since pin is connected to CPU output voltage, which is some f
