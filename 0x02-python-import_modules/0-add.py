#!/usr/bin/env python3
import sys

args = sys.argv[1:]  # Get all arguments except for the script name
num_args = len(args)

# Print the number of arguments and the list of arguments
if num_args == 0:
    print("0 arguments.")
else:
    plural = "" if num_args == 1 else "s"
    print("{} argument{}:".format(num_args, plural))
    for i, arg in enumerate(args):
        print("{}: {}".format(i + 1, arg))
