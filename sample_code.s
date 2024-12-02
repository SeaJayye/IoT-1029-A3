.global _start
_start:
	MOV R0,#1
	MOV R1,#2
	
	CMP R0,R1 //R0-R1
	BLT lesser
	BGT greater
	BAL end

lesser:
	MOV R2,#1
	BAL end
	
greater:
	MOV R2,#2
	
end:
	MOV R3,#11