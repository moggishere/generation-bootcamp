/* 2- Desenvolver um sistema que efetue a soma de todos os números ímpares que são
múltiplos de três e que se encontram no conjunto dos números de 1 até 500. */

programa
{
	
	funcao inicio()
	{
		inteiro soma, cont
		soma = 0
		para(cont = 1; cont <= 500; cont++){
			se(cont%2 != 0 e cont%3 == 0){
				soma = soma + cont
				escreva("\n",cont, ": ",soma) //indica qual que é o número da conta e a soma dos inteiros
			} senao {
				escreva("\n",cont," PULA") //PULA indica qual valor foi ignorado pelo for
			}
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 512; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */