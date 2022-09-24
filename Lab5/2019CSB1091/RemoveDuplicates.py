def RemDupLoop(l):
    ans = []
    for i in l:
        if i not in ans:
            ans.append(i)
    return sorted(ans)


def RemDupSet(l):
    l = list(set(l))
    return sorted(l)
print("Enter the list element separated by a space : ")
l = [i for i in input().split()]

l_copy = l
l = RemDupLoop(l)
print("New list without duplicates using loop : \n")
print(*l)
print("\n")
l_copy = RemDupSet(l_copy)
print("New list without duplicates using set : ")
print(*l_copy)

