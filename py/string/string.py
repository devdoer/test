
def f(s, cur_sku):
        skus = s.split('&')
        r = []
        for sku in skus:
            if sku == cur_sku:
                r.append('1')
            else:
                r.append('0')
        p =  '-'.join(r)
        return p
            
