/* 3) Desenvolva um sistema em que:
Leia 4 (quatro) números;
Calcule o quadrado de cada um;
Se o valor resultante do quadrado do terceiro for >= 1000, imprima-o e finalize;
Caso contrário, imprima os valores lidos e seus respectivos quadrados.*/

programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		real a, b, c, d
		
		escreva("\n digite o primeiro valor: ")
		leia(a)
		escreva("\n digite o segundo valor: ")
		leia(b)
		escreva("\n digite o terceiro valor: ")
		leia(c)
		escreva("\n digite o quarto valor: ")
		leia(d)

		a = mat.potencia(a, 2)
		b = mat.potencia(b, 2)
		c = mat.potencia(c, 2)
		d = mat.potencia(d, 2)

		se (c >= 1000) {
			escreva("\n",c, "\tVALOR DO QUADRADO DO TERCEIRO EXCEDE OU É IGUAL A 1000")
		} senao {
			escreva("\n", a, "\t", b, "\t", c, "\t", d, "\tVALORES AO QUADRADO")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 545; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */