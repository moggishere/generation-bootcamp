//3. Faça um sistema que leia o tempo de duração de um evento em uma fábrica expressa em segundos e mostre-o expresso em horas, minutos e segundos.

programa
{
	
	funcao inicio()
	{
		inteiro totalSeg
		escreva("Digite o total de segundos: ")
		leia (totalSeg)

		inteiro h, m, s
		h = totalSeg/3600
		totalSeg = totalSeg - h*3600
		m = totalSeg/60
		totalSeg = totalSeg - m*60
		s = totalSeg

		escreva("\nForam ", h, " horas ", m, " minutos ", s, " segundos")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 466; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */