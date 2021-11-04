/* 3. Escreve um programa que lê duas matrizes N1 (4,6) e N2(4,6) e cria:
a) Uma matriz M1 cujos elementos serão as somas dos elementos de mesma posição
das matrizes N1 e N2;
b) Uma matriz M2 cujos elementos serão as diferenças dos elementos de mesma
posição das matrizes N1 e N2. */

programa
{
	inclua biblioteca Util-->util
	
	funcao inicio()
	{
		inteiro N1[4][6], N2[4][6], M1[4][6], M2[4][6], row, column

		para(row = 0; row < 4; row++){
			para(column = 0; column < 6; column++){
				/*
				escreva("\nEntre com um número para a matriz N1: ") //caso queira inserir os valores manualmente
				leia(N1[row][column])
				escreva("\nEntre com um número para a matriz N2: ")
				leia(N2[row][column])
				*/
				N1[row][column]=util.sorteia(0, 100)
				N2[row][column]=util.sorteia(0, 100)
				
				M1[row][column] = N1[row][column] + N2[row][column]
				M2[row][column] = N1[row][column] - N2[row][column]
				escreva("\nM1= ", M1[row][column])
				escreva("\nM2= ", M2[row][column], "\n\n")
			}
		}
		para(row = 0; row < 4; row++){ //imprime M1 em tabela depois que todas as matrizes sao adicionadas
			para(column = 0; column < 6; column++){
				escreva("[", M1[row][column], "]")
			}
			escreva ("\n")
		}	

		escreva ("\n\n")
		
		para(row = 0; row < 4; row++){ //imprime M2 em tabela depois que todas as diferencas de matrizes sao calculadas
			para(column = 0; column < 6; column++){
				escreva("[", M2[row][column], "]")
			}
			escreva ("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */