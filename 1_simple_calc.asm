# f = g + (h - 5) (f, g, h) = ($s0, $s1, $s2)
#f=0, g=10, h=6

.data
f: .word 0
g: .word 10
h: .word 6

.text
lw $s0, f
lw $s1, g
lw $s2, h

addi $t0, $s2, -5
add $s0, $s1, $t0

li $v0, 10
syscall
