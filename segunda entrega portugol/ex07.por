/* 7) Receber valores de base e altura de um triângulo e verificar se são valores válidos
(positivos maiores que zero). Em caso afirmativo, calcular a área do triângulo. (altura*base)/2 */

programa
{
	
	funcao inicio()
	{
		real a, b
		escreva("\nDigite a base do triângulo em metros:")
		leia(b)
		escreva("\nDigite a altura do triângulo em metros:")
		leia(a)

		se (a > 0 e b > 0){
			escreva("\nA área do triângulo em metros quadrados é: ", a*b*0.5)
		} senao {
			escreva("\nValor inválido")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 500; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */