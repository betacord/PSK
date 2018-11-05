# B[8]=A[i-j]
# f=$s0, g=$s1, h=$s2, i=$s3, j=$s4
# &A=$s6
# B=[0,0,0,0,0,0,0,0]
# A=[1,2,3,4,5,6,7]
# word - slowo 32 bit

.data
A: .word 1, 2, 3, 4, 5, 6, 7
B: .word 0, 0, 0, 0, 0, 0, 0, 0
i: .word 6
j: .word 3
