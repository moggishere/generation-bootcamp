//4. Escreva um sistema que leia três números inteiros e positivos (A, B, C) 
// e calcule a seguinte expressão:
//D = (R + S)/2
//sendo que R = (A + B)² e S = (B + C)²

import java.util.*;

public class ex04 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int a, b, c, d, r, s;
        System.out.println("\nInsira o valor de A: ");
        a = scan.nextInt();
        System.out.println("\nInsira o valor de B: ");
        b = scan.nextInt();
        System.out.println("\nInsira o valor de C: ");
        c = scan.nextInt();
        scan.close();

        r = (a+b)*(a+b);
        s = (b+c)*(b+c);
        d = (r + s)/2;
        System.out.println("\nO valor de D vai ser: " + d);
    }
}
