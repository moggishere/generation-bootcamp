/* 1- Escreva um programa em java para ler o código do cliente e o saldo inicial de uma conta bancária. 
A seguir ler um número indeterminado de pares de valores indicando respectivamente o tipo da 
operação (codificado da seguinte forma: 1.Depósito 2.Retirada 3.Fim) e o valor. Quando for informado para o tipo o código 3, o programa
deve ser encerrado e impresso o saldo final da conta com as seguintes mensagens: 
CONTA ZERADA, CONTA ESTOURADA(se o saldo for negativo) ou CONTA PREFERENCIAL (se o saldo for positivo) 

POR FAVOR TOMEM CUIDADE EM USAR ESSE COMO REF, POIS TÁ BEM TRUNCADO

*/

programa
{
	
	funcao inicio()
	{
		inteiro cod, op
		real saldo, dep, ret
		
		escreva("\nInsira o seu código de identificação: ")
		leia(cod)

		escreva("\nInsira o seu seu saldo inicial em reais: ")
		leia(saldo)

		escreva("\nEscolha uma das seguintes operações: \n1. Depósito \t2. Retidara \t3. Fim\n")
		leia(op)

		enquanto (op != 3){
			
			escolha(op){
			caso 1:
				escreva("\nInsira o quanto quer depositar: ")
				leia(dep)
				saldo += dep
				se(saldo > 0) {
					escreva("\nO saldo na sua conta é: ", saldo)
					escreva("\nCONTA PREFERENCIAL")
					escreva("\nDeseja realizar mais alguma operação?")
					escreva("\nEscolha uma das seguintes operações: \n1. Depósito \t2. Retidara \t3. Fim\n")
					leia(op)
				} senao se(saldo < 0) {
					escreva("\nO saldo na sua conta é: ", saldo)
					escreva("\nCONTA ESTOURADA")
					op = 3
				} senao se(saldo == 0) {
					escreva("\nO saldo na sua conta é: ", saldo)
					escreva("\nCONTA ZERADA")
					op = 3
				}
				pare
			caso 2:
				escreva("\nInsira o quanto quer retirar: ")
				leia(ret)
				saldo -= ret
				se(saldo > 0) {
					escreva("\nO saldo na sua conta é: ", saldo)
					escreva("\nCONTA PREFERENCIAL")
					escreva("\nDeseja realizar mais alguma operação?")
					escreva("\nEscolha uma das seguintes operações: \n1. Depósito \t2. Retidara \t3. Fim\n")
					leia(op)
				} senao se(saldo < 0) {
					escreva("\nO saldo na sua conta é: ", saldo)
					escreva("\nCONTA ESTOURADA")
					op = 3
				} senao se(saldo == 0) {
					escreva("\nO saldo na sua conta é: ", saldo)
					escreva("\nCONTA ZERADA")
					op = 3
				}
				pare
			caso contrario:
				escreva("\nTchau, operação inválida")
				op = 3
			} 			
		}
		se(saldo > 0) {
		escreva("\nO saldo na sua conta é: ", saldo)
		escreva("\nCONTA PREFERENCIAL")
		escreva("\nObrigade por user nosso serviço e até mais")
		} senao se(saldo < 0) {
		escreva("\nO saldo na sua conta é: ", saldo)
		escreva("\nCONTA ESTOURADA")
		escreva("\nObrigade por user nosso serviço e até mais")
		} senao se(saldo == 0) {
		escreva("\nO saldo na sua conta é: ", saldo)
		escreva("\nCONTA ZERADA")
		escreva("\nObrigade por user nosso serviço e até mais")
				}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 589; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */