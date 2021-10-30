/* 4) Implementar um sistema que leia três números quaisquer e os imprima em ordem crescente. */

programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		inteiro a, b, c, menor, medio, maior

		escreva("/nInsira o primeiro valor: ")
		leia(a)
		escreva("/nInsira o segundo valor: ")
		leia(b)
		escreva("/nInsira o terceiro valor: ")
		leia(c)	
		maior = mat.maior_numero(mat.maior_numero(a, b), mat.maior_numero(b, c))
		menor = mat.menor_numero(mat.menor_numero(a, b), mat.menor_numero(b, c))
		medio = 0 
		 se(a == maior e b == menor) {
			medio = c
		} se(b == maior e a == menor) {
			medio = c
		} se(a == maior e c == menor) {
			medio = b
		} se(c == maior e a == menor) {
			medio = b
		} se(b == maior e c == menor) {
			medio = a
		} se(c == maior e b == menor) {
			medio = a
		}

		escreva("\n Os números em ordem crescente são ", menor, ", ", medio, ", ", maior, ".")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 895; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */