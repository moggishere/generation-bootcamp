//5. Faça um sistema que leia as 3 notas de um aluno e calcule a média final deste
//aluno. Considerar que a média é ponderada e que o peso das notas é: 2,3 e 5,
//respectivamente.

programa
{
	
	funcao inicio()
	{

		inteiro a, b, c, x, y, z, med
		x = 2
		y = 3
		z = 5
		escreva("\nEscreva a primeira nota: ")
		leia(a)
		escreva("\nEscreva a segunda nota: ")
		leia(b)
		escreva("\nEscreva a terceira nota: ")
		leia(c)

		med = (a*x + b*y + c*z)/(x + y + z)

		escreva("\nA média ponderada será: ",med)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 506; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */