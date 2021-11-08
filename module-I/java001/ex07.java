//7. Um sistema de equações lineares do tipo:
//
//, pode ser resolvido segundo mostrado abaixo :
//
// 
//
//Escreva um sistema que lê os coeficientes a,b,c,d,e e f e calcula e mostra os
//valores de x e y.
import java.util.*;
public class ex07 {
    public static void main(String[] args) {
        double a, b, c, d, e, f;
        double x, y;
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira o valor a: ");
        a = scan.nextDouble();
        System.out.println("\nInsira o valor b: ");
        b = scan.nextDouble();
        System.out.println("\nInsira o valor c: ");
        c = scan.nextDouble();
        System.out.println("\nInsira o valor d: ");
        d = scan.nextDouble();
        System.out.println("\nInsira o valor e: ");
        e = scan.nextDouble();
        System.out.println("\nInsira o valor f: ");
        f = scan.nextDouble();
        scan.close();
        x = (c*e - b*f)/(a*e - b*d);
        y = (a*f - c*d)/(a*e - b*d);
        System.out.println("\nSão respectivamente os valores de x e y: " + x + ", " + y);
    }
}
