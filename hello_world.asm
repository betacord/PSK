.data
greeting: .asciiz "Hello world! hehe" #lancuch zakonczony nullem

.text
main:
# addi $v0, $zero, 4
li $v0, 4 #presudoinstrukcja, zaladowanie tekstu i wywolanie przerwania
la $a0, greeting
syscall

li $v0, 10 #przerwanie konczace dzialanie programu
syscall
