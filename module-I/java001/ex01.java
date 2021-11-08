// 1. Faça um sistema que leia a idade de uma pessoa expressa em anos, meses e
// dias e mostre-a expressa apenas em dias.
import java.util.*;

public class ex01 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int year, month, days, sumDays;
        System.out.println("\nInsira os anos: ");
        year = scan.nextInt();

        System.out.println("\nInsira os meses: ");
        month = scan.nextInt();

        System.out.println("\nInsira os dias: ");
        days = scan.nextInt();

        scan.close();

        System.out.println("\nTem\n" + year + " ano(s)\n" + month + " mes(es)\n" + days + " dia(s)\n"); //test

        sumDays = days + month*30 + year*365;
        System.out.println("\nQue totaliza " + sumDays + " dias");
        
    }
}