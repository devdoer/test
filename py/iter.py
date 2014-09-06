def f():
    for i in xrange(10):
        if i%2==0:
            yield i,0
        else:
            yield i,1


r = f()
print r
for x in r:
    print x
