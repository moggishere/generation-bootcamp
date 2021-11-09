package Turma38Entrega2;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
public class test {
    public static void main(String[] args) {
        int totalUserInput;
        ArrayList<Integer> numbers = new ArrayList<Integer>();
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira quantos números deseja ver na cadeia ascendente: ");
        totalUserInput = scan.nextInt();
        for (int count = 0; count < totalUserInput; count++) {
        System.out.println("\nInsira o valor " + (count+1) + ": ");
        numbers.add(scan.nextInt());
        }
        scan.close();
        Collections.sort(numbers);
        System.out.println("\nFicam em ordem crescente:");
        System.out.print("\t" + numbers + "\t");
    }
}
