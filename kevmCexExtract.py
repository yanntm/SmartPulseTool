import sys
import re

cexMap = {}

for f in sys.argv:
    f = open(f, 'r')
    lines = f.readlines()
    provedPattern = re.compile('Proved \d+ out of \d+ specs')
    leavingPattern = re.compile("make: Leaving directory '(.*)'")
    propPattern = re.compile("([a-zA-Z]+): ([a-zA-Z0-9-]+) -- (.*)")
    timePattern = re.compile("[0-9\.]+")

    benchmark = ""
    timeLine = ""

    for i in range(0, len(lines)):
        line = lines[i]

        m = leavingPattern.match(line)
        if(m):
            benchmark = m.group(1)
            timeLine += m.group(1)

        m = propPattern.match(line)
        if(m):
            if(m.group(1) == "Proved"):
                timeLine += ","
            elif(m.group(1) == "Failed"):
                if(timePattern.match(m.group(3))):
                    timeLine += "," + m.group(3)
                else:
                    timeLine += ","
        if provedPattern.match(line):
            cexMap[benchmark] = timeLine
            timeLine = ""

for key in cexMap:
    print(cexMap[key])
