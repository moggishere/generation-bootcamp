/* 2) Escreva um sistema que leia o número do empregado, o número de horas trabalhadas e o salário por hora, 
 *  e calcule o salário do mês. Cada hora trabalhada acima de 40 é paga com  
 *  50% de acréscimo sobre a hora trabalhada regular.  
 */

programa
{
	
	funcao inicio()
	{
		inteiro numEmp
		real hours, salary, pay
		
		escreva("\nInsira número do empregado: ")
		leia(numEmp)
		escreva("\nInsira horas trabalhadas: ")
		leia(hours)
		escreva("\nInsira o salário por hora ")
		leia(salary)

		se(hours > 40) {
			pay = 40*salary + (hours - 40)*salary*1.50
		} senao {
		 pay= hours*salary 
		 }
		
		escreva("\nO salário do empregade número ", numEmp, " será: ", pay)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 447; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */