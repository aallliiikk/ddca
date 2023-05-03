#
# Sum of Absolute Differences Algorithm
#
# Authors: 
#	X Y, Z Q 
#
# Group: ...
#

.text


main:


# Initializing data in memory... 
# Store in $s0 the address of the first element in memory
	# lui sets the upper 16 bits of thte specified register
	# ori the lower ones
	# (to be precise, lui also sets the lower 16 bits to 0, ori ORs it with the given immediate)
	     lui     $s0, 0x0000 # Address of first element in the vector
	     ori     $s0, 0x0000
	     addi   $t0, $0, 5	# left_image[0]	
	     sw      $t0, 0x0($s0)
	     addi   $t0, $0, 16	# left_image[1]		
	     sw      $t0, 0x4($s0)
	     # TODO1: initilize the rest of the memory. 
	     # 5 16 7 1 1 13 2 8 10
	     addi   $t0, $0, 7	# left_image[2]		
	     sw      $t0, 0x8($s0)
	     addi   $t0, $0, 1	# left_image[3]		
	     sw      $t0, 0xC($s0)
	     addi   $t0, $0, 1	# left_image[4]		
	     sw      $t0, 0x10($s0)
	     addi   $t0, $0, 13	# left_image[5]		
	     sw      $t0, 0x14($s0)
	     addi   $t0, $0, 2	# left_image[6]		
	     sw      $t0, 0x18($s0)
	     addi   $t0, $0, 8	# left_image[7]		
	     sw      $t0, 0x1C($s0)
	     addi   $t0, $0, 10	# left_image[8]		
	     sw      $t0, 0x20($s0)
	     
	     # 4 15 8 0 2 12 3 7 11
	     addi   $t0, $0, 4	# right_image[0]	
	     sw      $t0, 0x24($s0)
	     addi   $t0, $0, 15	# right_image[1]	
	     sw      $t0, 0x28($s0)
	     addi   $t0, $0, 8	# right_image[2]	
	     sw      $t0, 0x2C($s0)
	     addi   $t0, $0, 0	# right_image[3]	
	     sw      $t0, 0x30($s0)
	     addi   $t0, $0, 2	# right_image[4]	
	     sw      $t0, 0x34($s0)
	     addi   $t0, $0, 12	# right_image[5]	
	     sw      $t0, 0x38($s0)
	     addi   $t0, $0, 3	# right_image[6]	
	     sw      $t0, 0x3C($s0)
	     addi   $t0, $0, 7	# right_image[7]	
	     sw      $t0, 0x40($s0)
	     addi   $t0, $0, 11	# right_image[8]	
	     sw      $t0, 0x44($s0)
	     
	     addi   $t0, $0, 0	# sad_array[0]
	     sw      $t0, 0x48($s0)
	     addi   $t0, $0, 0	# sad_array[1]
	     sw      $t0, 0x4C($s0)
	     addi   $t0, $0, 0	# sad_array[2]
	     sw      $t0, 0x50($s0)
	     addi   $t0, $0, 0	# sad_array[3]
	     sw      $t0, 0x54($s0)
	     addi   $t0, $0, 0	# sad_array[4]
	     sw      $t0, 0x58($s0)
	     addi   $t0, $0, 0	# sad_array[5]
	     sw      $t0, 0x5C($s0)
	     addi   $t0, $0, 0	# sad_array[6]
	     sw      $t0, 0x60($s0)
	     addi   $t0, $0, 0	# sad_array[7]
	     sw      $t0, 0x64($s0)
	     addi   $t0, $0, 0	# sad_array[8]
	     sw      $t0, 0x68($s0)
	     
	     
	     
	# TODO4: Loop over the elements of left_image and right_image
	
	addi $s1, $0, 0 # $s1 = i = 0
	addi $s2, $0, 9	# $s2 = image_size = 9
	addi $s3, $0, 0 # $s3 = memory_address = 0

loop:

	# Check if we have traverse all the elements 
	# of the loop. If so, jump to end_loop:
	beq $s1, $s2, end_loop
	
	# Load left_image{i} and put the value in the corresponding register
	# before doing the function call
	lw $a0, 0($s3)
	
	
	# Load right_image{i} and put the value in the corresponding register
	add $s3, $s3, $s2
	add $s3, $s3, $s2
	add $s3, $s3, $s2
	add $s3, $s3, $s2
	lw $a1, 0($s3)
	
	
	# Call abs_diff
	j abs_diff
	
	#Store the returned value in sad_array[i]
	add $s3, $s3, $s2
	add $s3, $s3, $s2
	add $s3, $s3, $s2
	add $s3, $s3, $s2
	sw $v0, 0($s3)
	
	
	# Increment variable i and repeat loop:
	sub $s3, $s3, $s2
	sub $s3, $s3, $s2
	sub $s3, $s3, $s2
	sub $s3, $s3, $s2
	sub $s3, $s3, $s2
	sub $s3, $s3, $s2
	sub $s3, $s3, $s2
	sub $s3, $s3, $s2
	addi $s3, $s3, 4
	
	addi $s1, $s1, 1
	j loop
	

	
end_loop:

	#TODO5: Call recursive_sum and store the result in $t2
	#Calculate the base address of sad_array (first argument
	#of the function call)and store in the corresponding register   
	
	addi $a0, $0, 0
	add $a0, $a0, $s2
	add $a0, $a0, $s2
	add $a0, $a0, $s2
	add $a0, $a0, $s2
	add $a0, $a0, $s2
	add $a0, $a0, $s2
	add $a0, $a0, $s2
	add $a0, $a0, $s2
	
	# Prepare the second argument of the function call: the size of the array
	addi $a1, $1, 0
	add $a1, $a1, $s2 
	
	# Call to funtion
	j recursive_sum
	  
	
	#Store the returned value in $t2
	addi $t2, $ra, 0
	

end:	
	j	end	# Infinite loop at the end of the program. 




# TODO2: Implement the abs_diff routine here, or use the one provided
abs_diff:
	sub $t1, $a0, $a1
	sra $t2,$t1,31   
	xor $t1,$t1,$t2   
	sub $v0,$t1,$t2    

	jr $ra

# TODO3: Implement the recursive_sum routine here, or use the one provided
recursive_sum:    
	addi $sp, $sp, -8       # Adjust sp
        addi $t0, $a1, -1       # Compute size - 1
        sw   $t0, 0($sp)        # Save size - 1 to stack
        sw   $ra, 4($sp)        # Save return address
        bne  $a1, $zero, else   # size == 0 ?
        addi  $v0, $0, 0        # If size == 0, set return value to 0
        addi $sp, $sp, 8        # Adjust sp
        jr $ra                  # Return

else:     
	add  $a1, $t0, $0		#update the second argument
        jal   recursive_sum 
        lw    $t0, 0($sp)       # Restore size - 1 from stack
        sll  $t1, $t0, 2        # Multiply size by 4
        add   $t1, $t1, $a0     # Compute & arr[ size - 1 ]
        lw    $t2, 0($t1)       # t2 = arr[ size - 1 ]
        add   $v0, $v0, $t2     # retval = $v0 + arr[size - 1]
        lw    $ra, 4($sp)       # restore return address from stack         
        addi $sp, $sp, 8        # Adjust sp
        jr $ra                  # Return