/* 1- A prefeitura de uma cidade fez uma pesquisa entre 20 de seus habitantes,
coletando dados sobre o salário e número de filhos. A prefeitura deseja saber:  
a) média do salário da população;
b) média do número de filhos;
c) maior salário;
d) percentual de pessoas com salário até R$100,00. */

programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		real salarioTotal, salarioInd, mediaSalario, mediaFilho, filhoTotal, maiorSalario, contSalarioMaior
		inteiro filho, quantHab, cont

		salarioTotal = 0.00
		filhoTotal = 0
		maiorSalario = 0.00
		contSalarioMaior = 0.00
		
		escreva("\nInsira quantos habitantes: ")
		leia(quantHab)

		para(cont = 1; cont <= quantHab; cont++) {

			escreva("\nInsira o salário do indivíduo número ", cont, ": ")
			leia(salarioInd)
			salarioTotal = salarioInd + salarioTotal

				se(salarioInd > maiorSalario){
					maiorSalario = salarioInd
				}
				se(salarioInd > 100.00) {
					contSalarioMaior = contSalarioMaior + 1
				}
			
			escreva("\nInsira a quantidade de filhos do indivíduo ", cont,": ")
			leia(filho)
			filhoTotal = filho + filhoTotal
		}

		escreva("\nA média dos salários é: ", mat.arredondar(salarioTotal/quantHab, 2))
		escreva("\nA média de quantos filhos são é: ", mat.arredondar(filhoTotal/quantHab, 2))
		escreva("\nO maior salário é: ", maiorSalario)
		escreva("\nO percentual de pessoas com salário até R$100,00 é : ", mat.arredondar(contSalarioMaior/quantHab,3))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */