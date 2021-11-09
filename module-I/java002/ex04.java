// 4- Faça um programa em que permita a entrada de um número qualquer e exiba se este
// número é par ou ímpar. Se for par exiba também a raiz quadrada do mesmo; se for
// ímpar exiba o número elevado ao quadrado.

package Turma38Entrega2;
import java.util.Scanner;
public class ex04 {
    public static void main(String[] args) {
        double userInput;
        double numResult;
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira um valor: ");
        userInput = scan.nextInt();
        scan.close();
        if (userInput%2 == 0) {
            numResult = Math.sqrt(userInput);
            int temp = (int)(numResult*100);
            double numPrint = ((double)temp)/100.0;
            System.out.println("\nO número" + userInput +" é par e sua raiz quadrada é " + numPrint);
        } else if (userInput%2 != 0) {
            numResult = Math.pow(userInput, 2);
            int temp = (int)(numResult*100);
            double numPrint = ((double)temp)/100.0;
            System.out.println("\nO número" + userInput +" é ímpar e seu valor elevado ao quadrado é " + numPrint);
        }
    }
}
