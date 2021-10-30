/* 1- Faça um programa que receba vários números positivos, calcule e mostre:
a) a soma dos números digitados;
b) a quantidade de números digitado;
c) a média dos números digitados;
d) o maior número digitado;
e) o menor número digitado;
f) a média dos números pares. */

programa
{
	
	funcao inicio()
	{
		real a=0, c=0, d=0, E=0, f=0, n, p=0, pm=0 //estou usando n para carregar os números, p conta os números pares e pm é o contador da média
		inteiro x=0, b=0, engine = 0

		escreva("\nDigite: ")
		leia(n)
		E = n
		x = n
		a += n
		b += 1
		c = a/b
		se(d <= n){
			d = n
		}
		se(E >= n){
			E = n
		}
		se(x % 2==0){ //x está aí por ser int, já que n sendo real é incompatível
			p += n
			pm +=1
		}
		f = p/pm

		escreva("\na) a soma dos números digitados: ", a, "\nb) a quantidade de números digitados: ", b, "\nc) a média de números digitados: ", c)
		escreva("\nd) o maior número digitado: ", d, "\ne) o menor número digitado: ", E, "\nf) a média de números pares: ", f, "\n")

/*	**IMPORTANTE**
EU REPETI O PROGRAMA BASICAMENTE COMO FORMA DE GARANTIR QUE O VALOR "E" IMPRESSO NO CONSOLE SEMPRE SEJA O MENOR NÚMERO DIGITADO
COMO O PRIMEIRO DÍGITO SEMPRE SERÁ O MENOR, EU PRECISEI GARANTIR QUE ELE FOSSE REGISTRADO ANTES DO LOOP COMEÇAR
SE ESTÁ LENDO ESSA NOTA, PFVR PENSE EM UMA SOLUÇÃO MELHOR POIS A MINHA ESTÁ BEM FEIA */
	
		enquanto (engine == 0){ //programa de loop infinito

			escreva("\nDigite: ")
			leia(n)
			x = n
			a += n
			b += 1
			c = a/b
			se(d <= n){
				d = n
			}
			se(E >= n){
				E = n
			}
			se(x % 2==0){ //x está aí por ser int, já que n sendo real é incompatível
				p += n
				pm +=1
			}
			f = p/pm

			escreva("\na) a soma dos números digitados: ", a, "\nb) a quantidade de números digitados: ", b, "\nc) a média de números digitados: ", c)
			escreva("\nd) o maior número digitado: ", d, "\ne) o menor número digitado: ", E, "\nf) a média de números pares: ", f, "\n")
		}
			
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */