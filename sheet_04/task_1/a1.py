arr = [8, 11, 40, 53,32,33,16,18]
arr_bin = [bin(a)[2:] for a in arr]
print(f'{arr_bin=}')
arr_bin = [bin(a)[2:].rjust(6).replace(' ', '0') for a in arr]
print(f'{arr_bin=}')
full = ''.join(arr_bin)
print(f'{full=}')
W_bits = []
W = []
l = 32
for i in range(0, len(full), 32):
    W_bits.append(full[i:i+l].ljust(32).replace(' ', '0'))
    W.append(int('0b'+W_bits[-1], 2))
print([len(b) for b in W_bits])
print(f'{W_bits=}')
print(f'{W=}')