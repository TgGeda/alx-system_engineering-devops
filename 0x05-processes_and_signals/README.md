# ``` 0x05. Processes and signals ```

## Resources
- [Linux PID](http://www.linfo.org/pid.html)
- [Linux process](https://www.thegeekstuff.com/2012/03/linux-processes-environment/)
- [Linux signal](https://www.thegeekstuff.com/2012/03/linux-signals-fundamentals/)

## man or help:

- ps
- pgrep
- pkill
- kill
- exit
- trap

### General
- What is a PID
- What is a process
- How to find a process’ PID
- How to kill a process
- What is a signal
- What are the 2 signals that cannot be ignored

### More Info
For those who want to know more and learn about all signals, check out [this article](https://www.computerhope.com/unix/signals.htm).

# 0. What is my PID
#!/usr/bin/env bash

echo "The PID of this script is $$"
# 1. List your processes

## Write a Bash script that displays a list of currently running processes.
Write a Bash script that displays a list of currently running processes.

Requirements:

Must show all processes, for all users, including those which might not have a TTY
Display in a user-oriented format
Show process hierarchy
#!/usr/bin/env bash

echo "List of currently running processes:"

ps aux | awk '{print $2, $11}' | grep -v PID

#!/bin/bash

echo "List of currently running processes:"

# use ps command to display all processes for all users with hierarchy
ps axjf

# display in user-oriented format
echo ""
echo "User-oriented format:"
echo "---------------------"
ps axjf | awk '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12}'

exit 0

# The ps command is used to display all running processes.
# The awk command is used to print only the process ID (PID) and process name.
# The grep command is used to remove the header (PID COMMAND) from the output.
