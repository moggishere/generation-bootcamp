// 4- Faça um programa que leia duas matrizes 2 x 2 com valores reais. Ofereça ao usuário um menu de opções:
// (1) somar as duas matrizes 
// (2) subtrair a primeira matriz da segunda 
// (3) adicionar uma constante as duas matrizes
// (4) imprimir as matrizes 
// Nas duas primeiras opções uma terceira matriz 2 x 2 deve ser criada. Na terceira opção o valor da constante deve ser lido e o resultado da adição da constante deve ser armazenado na própria matriz.

import java.util.Scanner;
import java.util.Random;
import java.util.ArrayList;

public class ex04 {
    public static void main(String[] args) {
        int a = 0, b = 0;
        int column, row;
        int count = 0;
        int input;
        boolean error = false;
        boolean sumArray = false;
        ArrayList<Integer> list = new ArrayList<>();
        Random random = new Random();
        Scanner scan = new Scanner(System.in);

        System.out.println("\nInsira quantas filas existem dentro das duas matrizes randomizadas: ");
        a = scan.nextInt();
        System.out.println("\nInsira quantas colunas existem dentro das duas matrizes randomizadas: ");
        b = scan.nextInt();

        int[][] array01 = new int[a][b];
        int[][] array02 = new int[a][b];
        int[][] array03 = new int[a][b];

        for (row = 0; row < a; row++) {
            for (column = 0; column < b; column++) {
                array01[row][column] = random.nextInt(50);
                array02[row][column] = random.nextInt(50);
            }
        }

        System.out.println(
                "\nEscolha qual das operações deseja fazer: \n1 - SOMAR AS DUAS MATRIZES\t2 - SUBTRAIR A PRIMEIRA DA SEGUNDA MATRIZ\t3 - ADICIONAR UMA CONSTANTE AS DUAS MATRIZES\t4 - IMPRIMIR AS DUAS MATRIZES");
        input = scan.nextInt();

        switch (input) {
        case 1:
            for (row = 0; row < a; row++) { // array03[][] = array01[][] + array02[][];
                for (column = 0; column < b; column++) {
                    array03[row][column] = array01[row][column] + array02[row][column];
                }
            }
            sumArray = true;
            break;
        case 2:
            for (row = 0; row < a; row++) { // array03[][] = array01[][] - array02[][];
                for (column = 0; column < b; column++) {
                    array03[row][column] = array01[row][column] - array02[row][column];
                }
            }
            sumArray = true;
            break;
        case 3:
            System.out.println("\nInsira o valor da constante: ");
            int extra = scan.nextInt();
            for (row = 0; row < a; row++) {
                for (column = 0; column < b; column++) {
                    array01[row][column]+=extra;
                    array02[row][column]+=extra;
                }
            }

            break;
        case 4:
            // System.out.println("\nA matriz 1 é: ");
            // for (row = 0; row < a; row++) {
            //     for (column = 0; column < b; column++) {
            //         System.out.printf("%5d ", array01[row][column]);
            //     }
            //     System.out.println("");
            // }

            // System.out.println("\nA matriz 2 é: ");
            // for (row = 0; row < a; row++) {
            //     for (column = 0; column < b; column++) {
            //         System.out.printf("%5d ", array02[row][column]);
            //     }
            //     System.out.println("");
            // }

            break;
        default:
            System.out.println("\nERRO");
            error = true;
        }
        scan.close();

        if(input == 4 || error == false && sumArray == false) {
            System.out.println("\nA matriz 1 é: ");
            for (row = 0; row < a; row++) {
                for (column = 0; column < b; column++) {
                    System.out.printf("%5d ", array01[row][column]);
                }
                System.out.println("");
            }

            System.out.println("\nA matriz 2 é: ");
            for (row = 0; row < a; row++) {
                for (column = 0; column < b; column++) {
                    System.out.printf("%5d ", array02[row][column]);
                }
                System.out.println("");
            }
        } else if(sumArray == true) {
            System.out.println("\nA matriz soma das 1 e 2 é: ");
            for (row = 0; row < a; row++) {
                for (column = 0; column < b; column++) {
                    System.out.printf("%5d ", array03[row][column]);
                }
                System.out.println("");
            }
        }
        // System.out.println(array01);
        // System.out.println(array02);
    }
}
