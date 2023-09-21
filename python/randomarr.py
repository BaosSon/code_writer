import random


def ngaunhien(n):
    a = [random.randint(0, 100) for _ in range(n)]
    return a


def xuat(a):
    n = len(a)
    print(f"{n} mang ngau nhien la: ", end="")
    for i in range(n):
        print(a[i], end=" ")
    print()


def main():
    n = 6
    a = ngaunhien(n)
    xuat(a)


main()
