
max = int(input("max: "))

mega = 0

for i in range(1, max):
    nbre = i
    backupNbre = i
    counter = 0
    while nbre != 1:
        if nbre % 2 == 0:
            nbre = nbre / 2
        else:
            nbre = nbre * 3 + 1
        counter = counter + 1
    if counter > mega:
        mega = counter
        print(backupNbre, "\t ", counter)

