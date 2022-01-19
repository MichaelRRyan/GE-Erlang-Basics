# Games Engineering - Erlang Basics

## Erlang's Fault Tolerant Properties
1. **Process Isolation** alows programs to continue running when a single process encounters an error. Instead of breaking the entire system, the process will crash in isolation, leaving the rest to continue as before.
2. **Supervision and Restart Strategies** allows the program to restart the necessary parts of the application to return to operation after a crash, without interfering with already performing processes.
3. Erlang is built around focusing on the best case scenario, while providing tools for the worst case. If an application runs into a problem, it will crash and can be restarted, instead of propagating bad data further into the application.
4. Erlang can notify you when and how a process has failed, giving vital information to fix or minimize continuing problems.
5. Processes that depend on each other can be set up to shutdown together if one runs into an issue, opposed to stalling the system, expecting the other to respond.
6. The logger can be used to track all exceptions, even those not caught in the program.
