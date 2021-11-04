/* 2. Um dado é lançado 10 vezes e o valor correspondente é anotado. Faça um programa
que gere um vetor com os lançamentos, escreva esse vetor. A seguir determine e
imprima a média aritmética dos lançamentos, contabilize e apresente também
quantas foram as ocorrências da maior pontuação. */

programa
{
	inclua biblioteca Util-->util
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		inteiro vetor[10], cont, ocorrenciaMaior=0, y=0,contMaior=0 //conta do maior comeca de 1 pois o primeiro lancamento sempre conta
		real total=0.0
		
		para(cont = 0; cont < 10; cont++){ 
			vetor[cont] = util.sorteia(1, 6)

			se(contMaior == 0){ //conta quantas vezes um numero do vetor foi seguido por um numero de maior pontuacao
				contMaior+=1
			} senao se (vetor[cont]>vetor[cont-1]){
				contMaior+=1
			}

			se(vetor[cont] > ocorrenciaMaior){
				ocorrenciaMaior = vetor[cont]
			}
			
			total+=vetor[cont]
		}
		escreva("Os lançamentos foram:\t")
		para(cont = 0; cont < 10; cont++){ //imprime todos os numeros tirados em dado no console
			escreva("\t", vetor[cont], "\t")
			se(vetor[cont] == ocorrenciaMaior){
				y += 1
			}
		}

		escreva("\nO número maior ocorrido foi: ", ocorrenciaMaior, ". E ele aparece ", y, " vezes")
		escreva("\nA média aritmética de todos os lançamentos foi: ", total/10)
		escreva("\nO número de ocorrências de valor seguido por valor maior foi de: ", contMaior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1234; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */