#!/usr/bin/python -u
import sys
import os

files = sys.argv[1:]
paths = set()

for file_ in files:
    paths.add(file_)
paths = [path for path in paths if 'gradle' not in path and 'hobo' not in path
         and '.IntelliJIdea' not in path and 'spotify' not in path]
if len(paths)==1:
    print(paths[0])
elif len(paths)>1:
    print("there are multiple options choose which one")
    for i, path in enumerate(paths):
        print("{}: {}".format(i, path))
    sys.stdin = open('/dev/tty')
    option = raw_input("option\n")
    try:
        i = int(option)
        print(paths[i])
    except Exception as e:
        raise Exception('invalid input')
else:
    raise Exception('repository does not exist within home directory: please check spelling')

try:
    sys.stdout.close()
except:
    pass
try:
    sys.stderr.close()
except:
    pass
