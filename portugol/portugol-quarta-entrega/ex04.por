/* 4. Crie um programa que receba valores do usuário para preencher uma matriz 3X3, e
em seguida, exiba a soma dos valores dela e a soma dos valores da primeira
diagonal, ou seja, diagonal principal. */

programa
{
	
	funcao inicio()
	{
		inteiro m[3][3], row, column, total=0, somaDiag=0

		para(row= 0; row<3; row++){
			para(column=0; column<3; column++){
				escreva("\nInsira o valor da matriz de fila ", row+1, " e coluna " ,column+1, ": ")
				leia(m[row][column])
				total+=m[row][column]

				se(row == column){
					somaDiag+=m[row][column]
				}
			}
		}
		escreva("\nA soma de todos os valores inseridos foi: ", total)
		escreva("\nA soma da primeira diagonal foi: ", somaDiag)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 681; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {m, 10, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */