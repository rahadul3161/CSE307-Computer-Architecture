Here’s your code without any comments:

```asm
func1:
    addi $s1, $zero, 0
    addi $s2, $zero, 0
    addi $s3, $zero, 5
    move $a0, $s3
    jal func2
    move $t0, $v0
    jr $ra

func2:
    addi $t1, $a0, 5
    move $v0, $t1
    jr $ra
```
