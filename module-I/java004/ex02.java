// 2- Faça um programa que receba 6 números inteiros e mostre: 
// • Os números pares digitados;  
// • A soma dos números pares digitados; 
// • Os números ímpares digitados; 
// • A quantidade de números ímpares digitados.

import java.util.Scanner;
import java.util.ArrayList;

public class ex02 {
    public static void main(String[] args) {
        int [] array = new int[6];
        ArrayList<Integer> even = new ArrayList<>();
        ArrayList<Integer> odd = new ArrayList<>();
        int evenSum=0;
        int oddCount = 0;
        Scanner scan = new Scanner(System.in);
        for(int i= 0; i < 6; i++) {
            System.out.println("\nInsira o valor " + (i+1) + " para o vetor:");
            array[i] = scan.nextInt();
        }
        scan.close();

        for(int i= 0; i < 6; i++) {
            if (array[i]%2 == 0) {
                evenSum=+array[i];
                even.add(array[i]);
            } else if(array[i]%2 != 0) {
                oddCount++;
                odd.add(array[i]);
            }
        }
        System.out.println("\nForam pares os números: " + even);
        System.out.println("\nA soma deles foi: " + evenSum);
        System.out.println("\nForam ímpares os números: " + odd);
        System.out.println("\nA sua quantidade foi: " + oddCount);
    }
}
