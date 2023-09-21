print("ex1")
a = int(input("Nhap a= "))
b = int(input("Nhap b= "))
c = int(input("Nhap c= "))
t = a+b+c
print(t)
if (a == b == c):
    print(t*3)
print("ex2")
grade = int(input("nhap diem"))
if (grade >= 90):
    print("A")
elif (grade >= 80 and grade < 90):
    print("B")
elif (grade >= 70 and grade < 80):
    print("C")
elif (grade >= 60 and grade < 70):
    print("D")
else:
    print("F")
print("ex3")
nam = int(input("nhap nam vao "))
if (nam % 400 == 0) or ((nam % 4 == 0) and (nam % 100 != 0)):
    print("leaf year")
else:
    print("not leaf year")
