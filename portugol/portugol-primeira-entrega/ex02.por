//2. Faça um sistema que leia a idade de uma pessoa expressa em dias e mostre-a expressa em anos, meses e dias.

programa
{
	
	funcao inicio()
	{
		inteiro totalDias
		escreva ("digite o total de dias de vida:")
		leia (totalDias)

		inteiro ano, mes, dia
		ano = totalDias/365
		mes = (totalDias - ano*365)/30
		dia = totalDias - ano*365 - mes*30

		escreva (ano, " ano(s), ", mes, " mes(es) e ", dia, " dias")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 352; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */