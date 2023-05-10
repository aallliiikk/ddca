#
# Calculate sum from A to B.
#
# Authors: 
#	X Y, Z Q 
#
# Group: ...
#

.text
main:
	#
	# 
	#
	# $t2 = S, $t0 = A, $t1 = B
	addi $t0, $0, 0
	add $t1, $0, 0xA
	
while:
	beq $t0, $t1, end
	addi $t0, $t0, 1
	add $t2, $t2, $t0
	j	while
	# Put your sum S into register $t1
end:	
	j	end	# Infinite loop at the end of the program. 
