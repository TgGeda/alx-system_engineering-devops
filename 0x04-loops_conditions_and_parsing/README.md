# `Learning Objectives`
Here is a Bash script that displays "Best School" 10 times using a for loop:
# 1. For Best School loop
```
#!/usr/bin/env bash

for i in {1..10}
do
    echo "Best School"
done
```

Explanation:

- The `for` loop is used to repeat a set of commands a certain number of times. In this case, we want to repeat the command `echo "Best School"` 10 times.
- The syntax for a `for` loop in Bash is `for variable in list; do commands; done`. In this script, we are using the variable `i` to keep track of the number of times the loop has run.
- The `{1..10}` notation is a shorthand way of generating a list of numbers from 1 to 10. This is the list that the `for` loop will iterate over.
- The `echo` command simply outputs the text "Best School" to the terminal.
- Putting it all together, the script will run the `echo` command 10 times, each time outputting the text "Best School" to the terminal.
