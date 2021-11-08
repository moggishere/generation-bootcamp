// 5. Faça um sistema que leia as 3 notas de um aluno e calcule a média final deste
// aluno. Considerar que a média é ponderada e que o peso das notas é: 2,3 e 5,
// respectivamente.

import java.util.*;
public class ex05 {
    public static void main(String[] args) {
        int grade01, grade02, grade03, weight01, weight02, weight03, avgScore;
        weight01 = 2;
        weight02 = 3;
        weight03 = 5;
        Scanner scan = new Scanner(System.in);

        System.out.println("\nInsira a primeira nota: ");
        grade01 = scan.nextInt();

        System.out.println("\nInsira a segunda nota: ");
        grade02 = scan.nextInt();

        System.out.println("\nInsira a terceira nota: ");
        grade03 = scan.nextInt();

        scan.close();

        avgScore = (grade01*weight01 + grade02*weight02 + grade03*weight03)/(weight01 + weight02 + weight03);
        System.out.println("\nA média ponderada será: " + avgScore);
    }
}
