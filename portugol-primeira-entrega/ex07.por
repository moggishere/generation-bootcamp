//7. Um sistema de equações lineares do tipo:
//
//, pode ser resolvido segundo mostrado abaixo :
//
// 
//
//Escreva um sistema que lê os coeficientes a,b,c,d,e e f e calcula e mostra os
//valores de x e y.

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real a, b, c, d, w , f
		real x, y

		escreva("\nEscreva o valor a: ")
		leia(a)
		escreva("\nEscreva o valor b: ")
		leia(b)
		escreva("\nEscreva o valor c: ")
		leia(c)
		escreva("\nEscreva o valor d: ")
		leia(d)
		escreva("\nEscreva o valor e: ")
		leia(w)
		escreva("\nEscreva o valor f: ")
		leia(f)

		x = (c*w - b*f)/(a*w - b*d)
		y = (a*f - c*d)/(a*w - b*d)

		escreva("\nSão respectivamente os valores de x e y: ",x, ", ", y)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */