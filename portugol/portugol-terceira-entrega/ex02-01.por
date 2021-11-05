/* 1- Elaborar um programa que efetue a leitura sucessiva de valores numéricos e
apresente no final o total do somatório, a média e o total de valores lidos. O programa
deve fazer as leituras dos valores enquanto o usuário estiver fornecendo valores
positivos. Ou seja, o programa deve parar quando o usuário fornecer um valor
negativo. */

programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		real soma, media, total, valA, cont, positivo
		positivo = 1.00 //BOOLEAN IMPROVISADA
		valA = 0.00
		soma = 0.00
		media = 0.00
		total = 0.00
		enquanto(valA >= 0) {
			para(cont = 1; positivo < 2; cont++) {
				escreva("\nInsira um valor: ")
				leia(valA)
				soma = soma +valA
				media = valA/cont
				total = cont
				escreva("\nSOMATÓRIA: ", soma, "\tMÉDIA: ", mat.arredondar(media,2), "\tTOTAL: ", total)
				se(valA <= -1) {
					positivo = 3
					escreva("\nValor inserido é negativo")
				}
				}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 864; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */