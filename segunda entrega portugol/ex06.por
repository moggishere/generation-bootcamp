/* 6) Elabore um sistema que dada a idade de um nadador classifique-o em uma das seguintes
categorias:
Infantil A = 5 a 7 anos
Infantil B = 8 a 11 anos
Juvenil A = 12 a 13 anos
Juvenil B = 14 a 17 anos
Adultos = Maiores de 18 anos */

programa
{
	
	funcao inicio()
	{
		inteiro i
		escreva("\nDigite a idade do nadador: ")
		leia(i)

		se(i<5) {
			escreva("\nIdade inválida")
		} senao se(i >= 5 e i < 8) {
			escreva("\nInfantil A")
		} senao se(i >= 8 e i < 12) {
			escreva("\nInfantil B")
		} senao se(i >= 12 e i < 14) {
			escreva("\nJuvenil A")
		} senao se(i >= 14 e i < 18) {
			escreva("\nJuvenil B")
		} senao {
			escreva("\nAdulto")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 652; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */