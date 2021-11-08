// 2. Faça um sistema que leia a idade de uma pessoa expressa em dias e mostre-a
// expressa em anos, meses e dias.

import java.util.*;
public class ex02 {
    public static void main(String[] args) {
        int sumDays, year, month, day;
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira o total de dias: ");
        sumDays = scan.nextInt();
        scan.close();

        year = sumDays/365;
        month = (sumDays - year*365)/30;
        day = sumDays - year*365 - month*30;

        System.out.println("\n Tem " + year + " ano(s) " + month + " mes(es) " + day + " dia(s)");
    }
}
