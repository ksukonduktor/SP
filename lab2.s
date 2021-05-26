.data
	arr: .word -0x0001, 0x0001, -0x0001, 0x0001, -0x0001, 0x0001, -0x0001, 0x0001, -0x0001, 0x0001, -0x0001, 0x0001 
	summ_p: .word 0x0
	summ_n: .word 0x0
	
.text 
	.globl main 
	.type main, @function 
	main:
		leal arr, %ebx 
		movl $0xc, %ecx 
		cycle:
			movw (%ebx), %ax 
			cmpw $0x0, %ax 
			
			jg more
			jl less			
			je pass
			
			more:		
				
				addw summ_p, %ax				
				movw %ax, summ_p				
				jmp pass
				
			less:							
				addw summ_n, %ax				
				movw %ax, summ_n			
				jmp pass
				
			pass:
				
				
                addl $0x2, %ebx 
								
				loop cycle	
				
		movw $0x40, %ax 		
		andw summ_n, %ax
			
		result:
				
				