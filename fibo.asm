
	.ORIG x0200

	LD R0, REG0
	LD R1, REG1
	LD R2, REG2
	LD R3, REG3
	LD R4, REG4
	LD R5, REG5
	LD R6, REG6
	LD R7, REG7

START

	ADD R2, R1, R0 ; F_(n) = F_(n - 1) + F_(n - 2)
	ADD R7, R2, #0 ; distinct register to look at current fibo val

	ADD R0, R1, #0; reassigning F_(n - 2)
	ADD R1, R2, #0; reassigning F_(n - 1)
	AND R2, R2, #0; resetting F_(n)

BR START

REG0	.FILL x0001
REG1	.FILL x0001
REG2	.FILL x0000
REG3	.FILL x0000
REG4	.FILL x0000
REG5	.FILL x0000
REG6	.FILL x0000
REG7	.FILL x0000


	.END
