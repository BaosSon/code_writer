a=input().split()
b=''
for i in range(5,0,-1):
    if a[i]!='0':
        b=b+str(i+1)
print(b)
