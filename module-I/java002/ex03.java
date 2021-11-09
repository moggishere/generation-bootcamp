// 3- Faça um programa que receba a idade de uma pessoa e mostre na saída em qual
// categoria ela se encontra:
//  10-14 infantil
//  15-17 juvenil
//  18-25 adulto
package Turma38Entrega2;
import java.util.Scanner;
public class ex03 {
    public static void main(String[] args) {
        int age;
        Scanner scan = new Scanner(System.in);
        System.out.println("\nDigite a idade: ");
        age = scan.nextInt();
        scan.close();

        if (age < 10) {
            System.out.println("\nJovem de mais");
        } else if ((age >= 10) && (age <= 14)) {
            System.out.println("\nInfantil");
        } else if ((age >= 15) && (age <= 17)) {
            System.out.println("\nJuvenil");
        } else if ((age >= 18) && (age <= 25)) {
            System.out.println("\nAdulto");
        } else {
            System.out.println("\nMuito velho");
        }
    }
}
