extern printf
extern scanf
extern exit 

global _start 

section .data 

select1 db "select a number : ",10, 0 
select2 db "select a dan : ",10, 0 
done db " good bye ^ o ^ ", 10, 0
data_bin db "%d",0
dan_form db "%d * %d = %d",10,0

select_dan db 0 
select_number db 0


section .text

_start:
		mov rdi, select1
		call printf

		mov rdi, data_bin
		mov rsi, select_number
		call scanf 

		mov rax, [select_number]
		cmp rax, 2

		je number_2
		jg end 		
		cmp rax, 0
		je end
		

		mov r14,2
		mov r13, 1
		
 loop :
		

 		mov rsi, r14
 		mov rdi, dan_form
 		mov rdx, r13
 		mov rax, rsi
 		mul rdx
 		mov rcx, rax
		mov rdx, r13
 		call printf
	
		inc r13
 		cmp r13, 10
 	
		je loop2
		jmp loop
loop2:
 		inc r14 
 		mov r13, 1
 		cmp r14, 20
 		je end
 		jmp loop
		
		

 number_2:
 		mov rdi, select2
 		call printf
		mov rdi, data_bin
		mov rsi, select_dan
		call scanf
		
	 mov r13, 1
                mov r14, 2	
number_2_2:	
		mov rsi, [select_dan]
		mov rdi, dan_form
		mov rdx, r13
 		mov rax, rsi
 		mul rdx
 		mov rcx, rax
		mov rdx, r13
 		call printf
 		inc r13
 		cmp r13,10
 		je end
 		jmp number_2_2 

  end:
  		mov rdi, done
  		call printf
  		call exit


