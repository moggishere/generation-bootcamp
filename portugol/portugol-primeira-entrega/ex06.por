//6. Construa um programa em c que, tendo como dados de entrada dois pontos
//quaisquer no plano, P(x1, y1) e P(x2, y2), escreva a distância entre eles. A fórmula
//que efetua tal cálculo é: 

programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		real x1, y1, x2, y2
		real a, b, c, d, g, h

		escreva("\nEntre com coordenada x1: ")
		leia(x1)
		escreva("\nEntre com coordenada y1: ")
		leia(y1)
		escreva("\nEntre com coordenada x2: ")
		leia(x2)
		escreva("\nEntre com coordenada y2: ")
		leia(y2)

		a = x2 - x1
		b = y2 - y1
		g = mat.potencia(a, 2)
		h = mat.potencia(b, 2)
		c = g + h
		d = mat.raiz(c, 2)

		escreva("\nD será igual a: ", d)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */