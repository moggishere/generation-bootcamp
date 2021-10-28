/* 4) Faça um sistema que leia um número inteiro e mostre uma mensagem indicando se este
número é par ou ímpar, e se é positivo ou negativo. */

programa
{
	
	funcao inicio()
	{
		inteiro x, y
		escreva("\nDigite um número inteiro que não seja 0: \t")
		leia(x)

		y = x % 2
		se (y == 0) { //se for par
			escreva("\nO número digitado é par")
		} senao {
			escreva("\nO número digitado é ímpar")
		}
		se (x > 0){ //se for ímpar
				escreva(" e ele é positivo")
			} se (x < 0) {
				escreva(" e ele é negativo")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */