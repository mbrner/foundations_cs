from math import floor, ceil
arr = [8, 11, 40, 53,32,33,16,18]
#arr = [0,1,0,2,5,1,3,2,8,2]
#arr = [a+1 for a in arr]

def gamma_code(x):

    return '0'*(len(bin(x))-3) + bin(x)[2:]

gammas = [gamma_code(x) for x in arr]

print(' | '.join(gammas))

print('sum bits = ' + str(len(''.join(gammas))))

k = 3

P = []

for j in range(1, ceil(len(arr)/k)+1):
    idx = (j-1)*k + 1
    print(f'{j} -> {idx}')
    P.append(len(''.join(gammas[:(idx-1)]))+1)

print(P)
j = 6
idx = floor(j/k)
print(gammas[:j])
print(f'{j=}: P[{idx}]={P[idx-1]} + ' + ' + '.join([str(len(gammas[i])) for i in range((floor(j/k) -1)*k+1, j)]) + f"={len(''.join(gammas[:j-1]))+1}")


block = -1
p_star = []
for i, gamma in enumerate(gammas):
    block_i = ceil((i+1)/k)
    if block_i != block:
        block = block_i
        s = 0
    p_star.append(s)
    s += len(gamma)
print(f'{p_star=}')
    