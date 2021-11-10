// 5- Crie um programa que leia um número do teclado até que encontre um
// número igual a zero. No final, mostre a soma dos números
// digitados.(DO...WHILE)
import java.util.Scanner;
public class ex05 {
    public static void main(String[] args) {
        int input;
        int sum=0;
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira um número: ");
        do{
            input = scan.nextInt();
            sum+=input;
            System.out.println("\nO número inserido foi: " + input + "\nInsira outro:");
        } while(input != 0);
        scan.close();
        System.out.println("\nA soma dos números até que foi colocado 0 é " + sum);
    }
}
