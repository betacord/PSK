# B[8]=A[i]+A[k];

.data:
i: .word 2 # etykiety, wynik to A[2]+A[5], wynik=9
k: .word 5
A: .word 1, 2, 3, 4, 5, 6, 7, 8
B: .word -1, -1, -1, -1, -1, -1, -1, -1

.text
lw $s0, i
lw $s1, k
la $s2, B
la $s3, A

sll $t0, $s0, 2 # t0=i*4
add $t0, $s3, $t0 #t0=$A+4*i=$A[i]; $A - adres bazowy tablicy A
lw $t0 0($t0) #t0=A[i]

sll $t1, $s1, 2 # t1=i*4; t1 - rejestr
add $t1, $s3, $t1 
lw $t1 0($t1) 

add $t0, $t0, $t1 # t0=A[i]+A[k]

sw $t0, 32($s2) # zapis do pamieci s2 z offsetem 32
