/* 3) Implementar um sistema capaz de encontrar o maior dentre 3 números inteiros quaisquer. Suponha todos serem distintos. */

programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		real a, b, c /*, M*/

		escreva("/n Insira o primeiro valor: ")
		leia(a)
		escreva("/n Insira o segundo valor: ")
		leia(b)
		escreva("/n Insira o terceiro valor: ")
		leia(c)

		/*M = a
		se(a < b){
			M = b
		} se(b < c) {
			M = c
		} se(c < a) {
			M = a
		} se(c < b) {
			M = b
		}*/
		
		escreva("/n O maior número será: ", mat.maior_numero(mat.maior_numero(a, b), mat.maior_numero(b, c)))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 203; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */