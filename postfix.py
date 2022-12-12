#!/usr/bin/env python3

def eval_expr(s):
    arg=s.split()
    zas=[]
    
    for item in arg:
        if item=="+":
            zas.append(zas.pop()+zas.pop())
        elif item=="-":
            zas.append(zas.pop(0)-zas.pop())
        elif item=="*":
            zas.append(zas.pop()*zas.pop())
        elif item=="/":
            zas.append(int(zas.pop(0)/zas.pop()))
        else:
            zas.append(int(item))

    return zas[0]
