# B[8]=A[i-k]
# f=$s0, g=$s1, h=$s2, i=$s3, k=$s4
# &A=$s6
# B=[0,0,0,0,0,0,0,0]
# A=[1,2,3,4,5,6,7]
# word - slowo 32 bit

.data
A: .word 1, 2, 3, 4, 5, 6, 7
B: .word 0, 0, 0, 0, 0, 0, 0, 0
f: .word 0
g: .word 0
h: .word 0
i: .word 6
k: .word 3

.test
lw $s0, f
lw $s1, g
lw $s2, h
lw $s3, i
lw $s4, k
la $s6, A
la $s7, B

sub $t0, $s3, $s4
sll $t0, $t0, 2
add $t0, $s6, $t0
lw $t1, 0($t0)
sw $t1, 32($s7)
