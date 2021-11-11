// 3- Leia uma matriz 3 x 3, conte e escreva quantos valores maiores que 10 ela possui.

import java.util.Scanner;
import java.util.Random;
import java.util.ArrayList;
public class ex03 {
    public static void main(String[] args) {
        int a=0, b=0;
        int column, row;
        int count=0;
        ArrayList<Integer> list = new ArrayList<>(); //usando o arrayList pois quero adicionar os numeros maiores que 10 em uma lista de forma dinamica
        Random random = new Random();
        Scanner scan = new Scanner(System.in);

        System.out.println("\nInsira quantas filas existem dentro matriz randomizada: ");
        a = scan.nextInt();
        System.out.println("\nInsira quantas colunas existem dentro matriz randomizada: ");
        b = scan.nextInt();

        int [][] array = new int[a][b];

        for(row = 0; row < a; row++){
            for(column = 0; column < b; column++) {
                array[row][column] = random.nextInt(50);
                if (array[row][column] > 10) {
                    count++;
                    list.add(array[row][column]);
                }
            }
        }
        System.out.println("\nDentre os números gerados pela matriz bidimensional de forma randomica, foram " + count + " números maiores de 10");
        System.out.println("\nE elas são: \n" + list);
    }
}
