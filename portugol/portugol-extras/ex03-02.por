/* 2- Foi feita uma pesquisa para saber o perfil dos alunos que cursam o 2° Grau de uma determinada escola. 
Cada aluno fornecia a seu ano (primeiro-1, segundo-2, terceiro-3), quantos livros liam por 
mês e se gostavam de fazer redação (Sim-1 ou Não-0). Fazer um programa que leia os dados, calcule e escreva:
- A quantidade de alunos que está no terceiro ano;
- A maior quantidade de livros lidos por um aluno que está na segunda série;
- A média de livros lidos pelos alunos (considerando todas as séries);
- A porcentagem de alunos que não gostam de fazer redação e que estão no primeiro ano.
OBS: A condição de parada é que seja digitado 0 (zero) para a quantidade de livros.
*/
programa
{
	
	funcao inicio()
	{
		inteiro quantPrim=0, quantiSeg=0, quantTer=0, livrosSeg=0, redPrimNeg=0, q1, q2=1, q3, cont=0
		real med, livTotal=0.00
		
		enquanto(q2 != 0) { //termina o loop quando alguém responde 0 nos livros
			cont++
			escreva("Olá alune número ",cont, "!")
			escreva("\nDigite aqui qual que é o seu ano:\n1 - primeiro\t2 - segundo\t3 - terceiro\n")
			leia(q1)
			se (q1 == 3) {
				quantTer += 1
			}
			escreva("\nDigite quantos livros você lê por mês: ")
			leia(q2)
			
					
			se (q2 > livrosSeg) {
				livrosSeg = q2
			}

			escreva("\nDigite se você gosta ou não de redação: \n1 - SIM\t2 - NÃO\n")
			leia(q3)
			se (q3 == 2 e q1 == 1){
				redPrimNeg += 1
			}
			livTotal += q2
		
		}
		escreva("\nPodemos constar que \nA quantidade de alunos que está no terceiro ano: ", quantTer)
		escreva("\nA maior quantidade de livros lidos por um aluno que está na segunda série: ", livrosSeg)
		escreva("\nA média de livros lidos pelos alunos (considerando todas as séries): ", livTotal/cont)
		escreva("\nA porcentagem de alunos que não gostam de fazer redação e que estão no primeiro ano: ", redPrimNeg/cont)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1710; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */