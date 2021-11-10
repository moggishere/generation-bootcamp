// 2- Ler 10 números e imprimir quantos são pares e quantos são ímpares. (FOR)
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
public class ex02 {
    public static void main(String[] args) {
        int totalUserInput;
        ArrayList<Integer> numbers = new ArrayList<Integer>();
        ArrayList<Integer> odd = new ArrayList<Integer>();
        ArrayList<Integer> even = new ArrayList<Integer>();
        Scanner scan = new Scanner(System.in);
        System.out.println("\nInsira quantos números deseja ver distribuídos entre pares e ímpares: ");
        totalUserInput = scan.nextInt();
        for (int count = 0; count < totalUserInput; count++) {
            System.out.println("\nInsira o valor " + (count+1) + ": ");
            numbers.add(scan.nextInt());
        }
        scan.close();
        Collections.sort(numbers);
        for(int count = 0; count < totalUserInput; count++) {
            if((numbers.get(count))%2 == 0) {
                even.add(numbers.get(count));
            } else if((numbers.get(count)%2) != 0) {
                odd.add(numbers.get(count));
            }
        }
        System.out.println("Os números pares serão: ");
        System.out.println(even);
        System.out.println("Os números ímpares serão: ");
        System.out.println(odd);
    }
}
