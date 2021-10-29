/* 1- Faça um programa que mostre uma contagem na tela de 233 a 456, só que
contando de 3 em 3 quando estiver entre 300 e 400 e de 5 em 5 quando não estiver. */

programa
{
	
	funcao inicio()
	{
		inteiro x
		/*para(x = 233; x <= 456; x++) {
			enquanto(x < 300) {
			x = x + 3
			escreva("\n", x)
			} enquanto(x > 300 e x < 401) {
			x = x + 5
			escreva("\n", x)
			} 
			escreva("\n", x)
		}*/
		para(x = 233; x <=456; x = x + 5) {
			escreva("\n", x)
		faca {
			x = x + 3
			escreva("\n", x)
		} enquanto (x < 400 e x >300)
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 497; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */