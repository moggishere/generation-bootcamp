import java.util.Scanner;
import java.util.Random;
public class ex04refactored {
    static void printArray(int length01, int length02, int[][] x) {
        int row, column;
        for (row = 0; row < length01; row++) {
            for (column = 0; column < length02; column++) {
                System.out.printf("%5d ", x[row][column]);
            }
            System.out.println("");
        }
    }

    public static void main(String[] args) {
        int a = 0, b = 0;
        int column, row;
        int input;
        boolean error = false;
        boolean sumArray = false;
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
            
            break;
        default:
            System.out.println("\nERRO");
            error = true;
        }
        scan.close();

        if(input == 4 || error == false && sumArray == false) {
            System.out.println("\nA matriz 1 é: ");
           printArray(a, b, array01);

            System.out.println("\nA matriz 2 é: ");
            printArray(a, b, array02);
        } else if(sumArray == true) {
            System.out.println("\nA matriz soma das 1 e 2 é: ");
            printArray(a, b, array03);
        }
        // System.out.println(array01);
        // System.out.println(array02);
    }
}
