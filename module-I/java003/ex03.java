// 3- Solicitar a idade de várias pessoas e imprimir: Total de pessoas com menos de
// 21 anos. Total de pessoas com mais de 50 anos. O programa termina quando
// idade for =-99. (WHILE)
import java.util.Scanner;
import java.util.ArrayList;
public class ex03 {
    public static void main(String[] args) {
        int age=0;
        int count = 0;
        int countYoung=0, countOld=0;
        ArrayList<Integer> ageList = new ArrayList<Integer>();
        ArrayList<Integer> ageListYoung = new ArrayList<Integer>(); 
        ArrayList<Integer> ageListOld = new ArrayList<Integer>();
        Scanner scan = new Scanner(System.in);
        while(age != -99) {
            System.out.println("\nDigite a idade da pessoa número " + (count+1) + ": (DIGITE -99 PARA FINALIZAR)");
            age = scan.nextInt();
            ageList.add(age);
            if(age < 21 && age != -99) {
                ageListYoung.add(age);
                countYoung+=1;
            } else if(age > 50 && age != -99) {
                ageListOld.add(age);
                countOld+=1;
            }
            count += 1;
        }
        scan.close();
        int index = ageList.size() - 1; //serve para remover -99
        ageList.remove(index);
        System.out.println("\nTodas as idades inseridas fora: \n" + ageList);
        System.out.println("\nDentre elas foram " + countYoung + "  menores de 21 e as idades especificas na ordem de entrada são: \n" + ageListYoung);
        System.out.println("\nDentre elas foram " + countOld + "  maiores de 50 e as idades especificas na ordem de entrada são: \n" + ageListOld);
    }
}
