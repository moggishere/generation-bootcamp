// 6- Escrever um programa que receba vários números inteiros no teclado. E no
// final imprimir a média dos números múltiplos de 3. Para sair digitar
// 0(zero).(DO...WHILE)

import java.util.*;

public class ex06 {
    public static void main(String[] args) {
        ArrayList<Integer> numbers = new ArrayList<Integer>();
        Scanner scan = new Scanner(System.in);
        int input;
        int count = -1;
        int sum = 0;
        int countSum = 0;
        do {
            System.out.println("\nInsira um valor: ");
            input = scan.nextInt();
            numbers.add(input);
            count++;
        } while (numbers.get(count) != 0);
        scan.close();
        int index = numbers.size() - 1;
        numbers.remove(index);
        for(int i = 0; i < numbers.size(); i++) {
            if (numbers.get(i)%3 == 0) {
                sum += numbers.get(i);
                countSum+=1;
            }
        }
        int temp = (int) (sum/countSum*100);
        double printNumber = ((double) temp)/100.0;

        System.out.println("\nSerá a média dos números múltiplos de 3 antes da entrada de 0 no console foi: " + printNumber + "\n" + numbers);
    }
}
