
max = int(input("max: "))

mega = 0

for i in range(1, max):
    nbre = i
    backupNbre = i
    counter = 0
    print(backupNbre, end=' ')
    while nbre != 1:
        if nbre % 2 == 0:
            nbre = nbre / 2
        else:
            nbre = nbre * 3 + 1
        counter = counter + 1
        print(int(nbre), end=' ')
    if counter > mega:
        mega = counter
        print(counter, end=" ")
    print("\n")
print("\n")
