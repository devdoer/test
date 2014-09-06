import random
l = random.sample(xrange(1,1000),500)
i = '&'.join(map(str,l))
f = open('skus.txt','w')
f.write(i)
f.close()
