.global _start
	// Watched the following lesson to revise relevant information: https://www.youtube.com/watch?v=kKtWsuuJEDs

_start:
	// General register 1 & 2, change these values to modify the function of the program.
	MOV R0, #1 	// store a number in R0
	MOV R1, #1	// store a number in R1

	// General register 5
	MOV R5, #15	// store the number 15 in R5

	// Comparisons and Branches
	CMP R0, R1 	// compare r0 to r1
	BLT lesser 	// if r0 < r1, branch to "lesser"
	BGT greater // if r0 > r1, branch to "greater"
	BEQ equal	// if r0 == r1, branch to "equal"
	BAL end		// branch always to "end"

// 'Less than' branch
lesser:
	LSR R5, R5, #1	// r5 logical shift right, once
	BAL end

// 'Greater than' Branch
greater:
	LSL R5, R5, #2	// r5 logical shift left, twice
	BAL end
	
// 'Equal to' branch
equal:
	ROR R5, R5, #1	// r5 rotation right, once
	BAL end

// 'End' branch
end:
	MOV R7, #1 	// exit syscall
	SWI 0