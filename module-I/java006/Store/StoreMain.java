// Crie uma um programa para trabalhar com estoque de uma loja, o programa deverá
// trabalhar com Collection do tipo List do Java para manipular os dados desse estoque, o
// programa deverá atender as seguintes funcionalidades:
// Armazenar dados da List
// Remover dados da list;
// Atualizar dados da list.
// Apresentar todos os dados da list.

package Store;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Scanner;
import java.util.List;

public class StoreMain {
    public static void main(String[] args) {
        int input;
        boolean on = true;
        Scanner scan = new Scanner(System.in);
        Scanner scanString = new Scanner(System.in);
        List<String> catalog = new ArrayList<String>();

        do {

            System.out.println(
                    "\nCATALOGUE:\n1 - Adicionar item\t2 - Remover item\t3 - Ordenar itens\t4 - Mostrar todos os items\t5 - SAIR");
            input = scan.nextInt();

            switch (input) {
            case 1:
                System.out.println("Digite o nome do item que quer adicionar:");
                catalog.add(scanString.nextLine());
                System.out.println("\nItem adicionado.");
                break;
            case 2:
                System.out.println("\nDigite o número do objeto que queira remover:");
                for(int count = 0; count < catalog.size(); count ++) {
                    System.out.println((count+1) + ". " + catalog.get(count));
                }

                int inputRemove = scan.nextInt() - 1;
                catalog.remove(inputRemove);

                break;
            case 3:
                catalog.sort(Comparator.comparing(String::toString));
                System.out.println("\nLista atualizada:\n" + catalog);
                break;
            case 4:
                System.out.println("\nOs itens adicionados foram:\n" + catalog);
                break;
            case 5:
                System.out.println("\nSISTEMA ENCERRADO");
                on = false;
                break;
            default:
                System.out.println("\nERROR");
            }

        } while (on == true);
        scan.close();
        scanString.close();
    }
}
