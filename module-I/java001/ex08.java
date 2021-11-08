// 8. O custo ao consumidor de um carro novo é a soma do custo de fábrica com a
// percentagem do distribuidor e dos impostos (aplicados ao custo de fábrica).
// Supondo que a percentagem do distribuidor seja de 28% e os impostos de 45%,
// escrever um sistema que leia o custo de fábrica de um carro e escreva o custo ao
// consumidor.
import java.util.*;
public class ex08 {
    public static void main(String[] args) {
        double manCost, tax, distCut, price;
        Scanner scan = new Scanner(System.in);
        System.out.println("\nEscreva o valor de custo de fabricação: ");
        manCost = scan.nextDouble();
        scan.close();
        tax = 0.45;
        distCut = 0.28;
        price = manCost + manCost*tax + manCost*distCut;
        System.out.println("\nO carro vai custar: " + price + " reais");
    }
}
