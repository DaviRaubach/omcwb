w = 'ajeitanei ou sul'
w = w.casefold()
ditongos = {'ei': [], 'ou': [], 'ui': []}
hiatos = {'ie': [], 'uo': [], 'ua': [], }
count = 0
indices = []


for i, l in enumerate(w):
    dh = w[i:(i+2)]
    if dh in ditongos.keys():
        ditongos[dh].append(i)

    if dh in hiatos.keys():
        if dh == 'ua' and w[(i-1)] != 'q':
            hiatos[dh].append(i)


print(hiatos)
print(ditongos)

f_hiatos = {'i -- e': [], 'u -- o': [], 'u -- a': [], }
for key, value in hiatos.items():
    for i in value:
        if w[(i + 2)] != " ":
            string = str(key[0]) + " -- " + str(key[1])
            w = w.replace(key, string)

for key, value in ditongos.items():
    for i in value:
        print(w[(i+1)])
        if w[(i + 1)] != " ":
            w = w.replace(w[i:(i+2)], "**")
        else:
            print("sp")

            # print(f_hiatos)
print(w)

# for i, l in enumerate(w):
#     # print(l)
#     # check ditongp
#     if l in ['ei', 'ou', 'ui']:
#         ditongos[l]
#     if l in ['a', 'á', 'à', 'e', 'é', 'i', 'o', 'ó', 'u']:
#         count = count + 1
#         indices.append(i)

# print(count, indices)

# if count * 2 == indices[-1]:
#     for i in indices:
#         print(w[i])
