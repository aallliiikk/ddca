abs_diff_color:
	# save $s0 - $s5 on stack, restore at the end of the procedure
	addi $sp, $sp, -24
	sw $s0, 20($sp)
	sw $s1, 16($sp)
	sw $s2, 12($sp)
	sw $s3, 8($sp)
	sw $s4, 4($sp) 
	sw $s5, 0($sp)

	addi $s0, $a0, 0
	addi $s1, $a1, 0
	addi $s2, $a2, 0
	addi $s3, $a3, 0
	# load $a5 + $sa6
	lw $s4, 40($sp)
	lw $s5, 44($sp)

	# calculate R1-R2 and add to $s0
	add $a0, $s0, $0
	add $a1, $s3, $0
	jal abs_diff
	add $s0, $s0, $v0

	# calculate G1-G2 and add to $s0
	add $a0, $s1, $0
	add $a1, $s4, $0
	jal abs_diff
	add $s0, $s0, $v0
	
	# calculate B1-B2 and add to $s0
	add $a0, $s2, $0
	add $a1, $s5, $0
	jal abs_diff
	add $s0, $s0, $v0
	
	# set return value to $s0
	addi $v0, $s0, 0
	
	# restore $s5 - $s0 from stack
	lw $s5, 0($sp)
	lw $s4, 4($sp)
	lw $s3, 8($sp)
	lw $s2, 12($sp)
	lw $s1, 16($sp)
	lw $s0, 20($sp)
	
	# return
	jr $ra