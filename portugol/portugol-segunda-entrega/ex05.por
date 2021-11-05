/* 5) A Secretaria de Meio Ambiente que controla o índice de poluição mantém 3 grupos de
indústrias que são altamente poluentes do meio ambiente. O índice de poluição aceitável
varia de 0,05 até 0,25. Se o índice sobe para 0,3 as indústrias do 1º grupo são intimadas a
suspenderem suas atividades, se o índice crescer para 0,4 as industrias do 1º e 2º grupo são
intimadas a suspenderem suas atividades, se o índice atingir 0,5 todos os grupos devem ser
notificados a paralisarem suas atividades. Faça um sistema que leia o índice de poluição
medido e emita a notificação adequada aos diferentes grupos de empresas. */

programa
{
	
	funcao inicio()
	{
		real p
		
		escreva("\nDigite aqui o índice de poluição: ")
		leia(p)
		se(p < 0){
			escreva("\nValor impossível")
		}
		se(p >= 0.3 e p < 0.4) {
			escreva("\nO 1º grupo deve suspender suas atividades.")
		} senao se(p >= 0.4 e p < 0.5) {
			escreva("\nOs 1º e 2º grupos devem suspender suas atividades.")
		} senao se(p >= 0.5) {
			escreva("\nTodos os grupos devem cessar suas atividades")
		} senao {
			escreva("\nÍndices aceitáveis")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 857; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */