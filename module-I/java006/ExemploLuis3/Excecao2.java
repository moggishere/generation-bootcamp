package ExemploLuis3;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Excecao2 {

	//demonstra lançamento de uma exceção quando ocorre uma divisão por zero
	
	public static int quociente(int numerador,int denominador) throws ArithmeticException
	{
		return numerador / denominador;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner leia = new Scanner(System.in);
		
		boolean continuaLoop=true; //determinar se mais entradas são necessárias
		
		do
		{
			try
			{
				System.out.println("\nEntre com o numerador: ");
				int numerador = leia.nextInt();
				System.out.println("\nEntre com o denominador: ");
				int denominador = leia.nextInt();
				
				int result = quociente(numerador,denominador);
				System.out.printf("\nResultado: %d / %d = %d",numerador,denominador,result);
				continuaLoop = false;
			}
			catch(InputMismatchException inputMismatchException)
			{
				System.err.printf("\nException: %s",inputMismatchException);
				leia.nextLine();
				System.out.println("\nVocê deve entrar com um valor do tipo inteiro. Por favor tente novamente!!!");
				
			}
			catch(ArithmeticException arithmeticException)
			{
				System.err.printf("\nException: %s",arithmeticException);
				System.out.println("\nZero é um denominador inválido. Por favor tente novamente!!!");
				
			}
		}while(continuaLoop);
	}

}
