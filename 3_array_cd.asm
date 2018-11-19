# B[8]=A[i-k]
# f=$s0, g=$s1, h=$s2, i=$s3, k=$s4
# &A=$s6
# &B=$s7
# B[g] = A[g+1] + A[g]

sll $t0, $s0, 2 # $t0=f*4
add $t0, $s6, $t0 #$t0=&A[f]
sll $t1, $s1, 2 # $t1=g*4
add $t1, $s7, $t1 # $t1=&B[g]
lw $s0, 0($t0) # f=A[f]
# addi $t2, $t0, 4
lw $t0, 4($t0)
add $t0, $t0, $s0
sw $t0, 0($t1)
