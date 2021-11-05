/* 2- Escreva um programa que exiba uma mensagem com as opções 
"1-multiplicar" ,"2-  somar" "3-Subtrair", "4-Dividir", "5-Sair". Leia a opção desejada (1, 2, 3, 4), leia dois valores, 
execute a operação escolhida e exiba o resultado. O programa deve ficar repetindo sua execução, até que seja escolhida a opção sair. */

programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		inteiro op
		real a, b
		escreva("\nEscolha uma das opções\n\n\t1 - multiplicar\t2 - somar\t3 - subtrair\t4 - dividir\t5 - sair:\n")
		leia(op)

		enquanto(op != 5){
			escolha(op){
				caso 1:
					escreva("\nAdicione o primeiro valor: ")
					leia(a)
					escreva("\nAdicione o segundo valor: ")
					leia(b)
					escreva("\nO resultado da conta é: ", a*b)
					escreva("\nEscolha uma das opções\n\n\t1 - multiplicar\t2 - somar\t3 - subtrair\t4 - dividir\t5 - sair:\n")
					leia(op)
					pare
				caso 2:
					escreva("\nAdicione o primeiro valor: ")
					leia(a)
					escreva("\nAdicione o segundo valor: ")
					leia(b)
					escreva("\nO resultado da conta é: ", a+b)
					escreva("\nEscolha uma das opções\n\n\t1 - multiplicar\t2 - somar\t3 - subtrair\t4 - dividir\t5 - sair:\n")
					leia(op)
					pare
				caso 3:
					escreva("\nAdicione o primeiro valor: ")
					leia(a)
					escreva("\nAdicione o segundo valor: ")
					leia(b)
					escreva("\nO resultado da conta é: ", a-b)
					escreva("\nEscolha uma das opções\n\n\t1 - multiplicar\t2 - somar\t3 - subtrair\t4 - dividir\t5 - sair:\n")
					leia(op)
					pare
				caso 4:
					escreva("\nAdicione o primeiro valor: ")
					leia(a)
					escreva("\nAdicione o segundo valor: ")
					leia(b)
					escreva("\nO resultado da conta é: ", a/b)
					escreva("\nEscolha uma das opções\n\n\t1 - multiplicar\t2 - somar\t3 - subtrair\t4 - dividir\t5 - sair:\n")
					leia(op)
					pare
				caso contrario:
					escreva("\nOperação inválida")
					op = 5
				}
			
		}
		escreva("\nPrograma interrompido")
		op = 5
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1914; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */