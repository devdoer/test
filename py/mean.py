l = range(100000)
p = 0.9999
s = 0.0
for i in l:
    s = p*s+(1-p)*i
print s
print 'true mean:', sum(l[-1000:])/1000
