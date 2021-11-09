// 2- Faça um programa que entre com três números e coloque em ordem crescente.
package Turma38Entrega2;
import java.util.Scanner;
import java.util.Arrays;

public class ex02 {
    public static void main(String[] args) {
        int num1, num2, num3;
        //int[] array = {num1, num2, num3};
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira o primeiro valor:");
        num1 = scan.nextInt();
        System.out.println("\nInsira o segundo valor:");
        num2 = scan.nextInt();
        System.out.println("\nInsira o terceiro valor:");
        num3 = scan.nextInt();
        scan.close();
        int[] array = {num1, num2, num3};
        Arrays.sort(array);
        System.out.println("\nFicam em ordem crescente:");
        for(int count = 0; count < array.length; count++){
            System.out.print("\t" + array[count] + "\t");
        }

    }

}
