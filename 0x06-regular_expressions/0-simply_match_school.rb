#!/usr/bin/env ruby
# Define the regular expression
pattern = ARGV[0].scan(/School/).join
puts pattern
# Get the first argument
input = ARGV[0]

# Check if the input matches the pattern
result = pattern =~ input

# Print the result
puts result
