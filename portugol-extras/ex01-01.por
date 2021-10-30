/* 1) Uma cidade classifica o ar baseado em um índice de poluição, de acordo com os seguintes  limites:  
IP < 35, bom;  
35 <= IP < 50, atenção;  
51<=IP<75; perigoso;  
75 <= IP <= 100, emergência.  
O sistema deve ler do teclado o valor do  IP, e imprimir uma mensagem indicando a respectiva classificação. */


programa
{
	
	funcao inicio()
	{
		inteiro ip
		escreva("\nDigite o índice de poluição: ")
		leia(ip)
		se (ip < 35) {
			escreva("\nBOM")
		} se (35 <= ip e ip < 50) {
			escreva("\nATENÇÃO")
		} se (51 <= ip e ip < 75) {
			escreva("\nPERIGOSO") 
		} se (75 <= ip e ip <= 100) {
			escreva("\nEMERGÊNCIA")
		} se (ip < 0 ou ip > 100) {
			escreva("\nVALOR INSERIDO É INVÁLIDO")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */