//6. Construa um programa em c que, tendo como dados de entrada dois pontos
//quaisquer no plano, P(x1, y1) e P(x2, y2), escreva a distância entre eles. A fórmula
//que efetua tal cálculo é: 
import java.util.*;
public class ex06 {
    public static void main(String[] args) {
        double x1, y1, x2, y2;
        double distance;
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira a coordenada x1: ");
        x1 = scan.nextInt();
        System.out.println("\nInsira a coordenada y1: ");
        y1 = scan.nextInt();
        System.out.println("\nInsira a coordenada x2: ");
        x2 = scan.nextInt();
        System.out.println("\nInsira a coordenada y2: ");
        y2 = scan.nextInt();
        scan.close();

        distance = Math.sqrt((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1));
        System.out.println("\n A distância entre os dois pontos é: " + distance);
    }
}
