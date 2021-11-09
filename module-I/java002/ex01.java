// 1- Faça um programa que receba três inteiros e diga qual deles é o maior.
package Turma38Entrega2;
import java.util.Scanner;
public class ex01 {
    public static void main(String[] args) {
        int num1, num2, num3;
        int tempVal1, tempVal2;
        Scanner scan = new Scanner(System.in);
        
        System.out.println("\nInsira o primeiro valor:");
        num1 = scan.nextInt();
        System.out.println("\nInsira o segundo valor:");
        num2 = scan.nextInt();
        System.out.println("\nInsira o terceiro valor:");
        num3 = scan.nextInt();
        scan.close();
        tempVal1 = Math.max(num1, num2);
        tempVal2 = Math.max(num2, num3);
        System.out.println("\nO maior valor vai ser: " + Math.max(tempVal1, tempVal2));
    }

}
