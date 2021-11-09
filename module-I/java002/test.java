package Turma38Entrega2;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
public class test {
    public static void main(String[] args) {
        ArrayList<Integer> numbers = new ArrayList<Integer>();
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira o primeiro valor:");
        numbers.add(scan.nextInt());
        System.out.println("\nInsira o segundo valor:");
        numbers.add(scan.nextInt());
        System.out.println("\nInsira o terceiro valor:");
        numbers.add(scan.nextInt());
        scan.close();
        Collections.sort(numbers);
        System.out.println("\nFicam em ordem crescente:");
        System.out.print("\t" + numbers + "\t");
    }
}
