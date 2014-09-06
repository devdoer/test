import snappy
import sys
import time
f = open(sys.argv[1])
s = f.read()
f.close()

r = snappy.compress(s)
print len(r)
