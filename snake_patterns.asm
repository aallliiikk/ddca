### Aanjhan Ranganathan <raanjhan@inf.ethz.ch>
### For Lab 8 Digital Technik 
### 2014

###   I/O addresses Reference
###  compatible to the compact modelling
###  0x00007FF0   LED output

.data
pattern: .word 0x00200000,0x00004000,0x00000080,0x00000001,0x00000002,0x00000004,0x00000008,0x00000400,0x00020000,0x01000000,0x02000000,0x04000000
loopcnt: .word 0x001e8484

.text
   lw $t3, loopcnt    # initialize a  large loopcounter (so that the snake does not crawl SUPERFAST)
   addi $t5,$0,48       # initialize the length of the display pattern (in bytes)
   
restart:   
   addi $t4,$0,0

move:
   lw $t0,0x7ff8($0)
   beqz $t0, forward
   bnez $t0,backward

forward:
   beq $t5,$t4, restart
   lw $t0,0($t4)
   sw  $t0, 0x7ff0($0) # send the value to the display
   
   # addi $t6, $t3, 0
   lw $t7, 0x7ff4($0)
   addi $s0, $t7, 1
   # div $t7, $t7, $t3
   # add $t6, $t6, $t7
   
   addi $t4, $t4, 4 # increment to the next address
   addi $t2, $0, 0 # clear $t2 counter

   j wait

backward:
   beq $t4,$0,restart
   lw $t0,0($t4)
   sw $t0, 0x7ff0($0)
   
   addi $t4, $t4, -4 # increment to the next address
   addi $t2, $0, 0 # clear $t2 counter

   j wait

wait:
   slt $t6, $t2, $t3 # maybe other way round
   # beq $t2,$t3,forward	
    beqz $t6, move
   
   #mul  $t7, $t7, 
   add  $t2, $t2, $s0     # increment counter
   j wait
