//1. Faça um sistema que leia a idade de uma pessoa expressa em anos, meses e dias e mostre-a expressa apenas em dias.

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro dias = 15
		inteiro meses = 2
		inteiro anos = 3
		inteiro d = 1*dias
		inteiro m = 30*meses
		inteiro a = 365*anos
		inteiro out = d+m+a

		escreva ("\nA pessoa tem ", out, " dias de vida")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 385; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */