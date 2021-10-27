//4. Escreva um sistema que leia três números inteiros e positivos (A, B, C) e calcule a seguinte expressão:
//D = (R + S)/2
//sendo que R = (A + B)² e S = (B + C)²

programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		inteiro a, b, c
		escreva("\nEscreva o valor A: ")
		leia(a)
		escreva("\nEscreva o valor B: ")
		leia(b)
		escreva("\nEscreva o valor C: ")
		leia(c)

		inteiro r, s, d, x, y, z
		x = a + b
		y = b + c
		r = mat.potencia(x, 2.0)
		s = mat.potencia(y, 2.0)
		d = (r+s)/2
		
		escreva("\nO valor de D será: ",d)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 551; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */