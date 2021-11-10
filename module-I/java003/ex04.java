// 4- Uma empresa desenvolveu uma pesquisa para saber as características
// psicológicas dos indivíduos de uma região. Para tanto, a cada uma das pessoas
// era perguntado: idade, sexo (1-feminino / 2-masculino / 3-Outros), e as opções
// (1, se a pessoa era calma; 2, se a pessoa era nervosa e 3, se a pessoa era
// agressiva). Pede-se para elaborar um sistema que permita ler os dados de 150
// pessoas, calcule e mostre: (WHILE)
//
//  o número de pessoas calmas;
//  o número de mulheres nervosas;
//  o número de homens agressivos;
//  o número de outros calmos;
//  o número de pessoas nervosas com mais de 40 anos;
//  o número de pessoas calmas com menos de 18 anos.

import java.util.*;

public class ex04 {
    public static void main(String[] args) {
        ArrayList<Integer> age = new ArrayList<Integer>();
        ArrayList<Integer> gender = new ArrayList<Integer>();
        ArrayList<Integer> opt = new ArrayList<Integer>();
        int calmTotal=0, nervousF=0, agrM=0, calmO=0, nervousOld=0, calmYoung=0;

        Scanner scan = new Scanner(System.in);

        System.out.println("\nInsira a quantidade de entrevistados que deseja: ");
        int count = scan.nextInt();
        int i = 0;
        while(i < count){ //sistema de contagem de dados por meio de ArrayList
            System.out.println("\nInsira a idade do entrevistade " + (i+1) + ": ");
            int input01 = scan.nextInt();
            age.add(input01);
            System.out.println("\nInsira o gênero do entrevistade " + (i+1) + ": \n1 - FEMININO\t2 - MASCULINO\t3 - OUTROS");
            int input02 = scan.nextInt();
            gender.add(input02);
            System.out.println("\nInsira o temperamento do entrevistade " + (i+1) + ": \n1 - SE FOI CALMA\t2 - SE ESTAVA NERVOSE\t3 - SE FOI AGRESSIVA");
            int input03 = scan.nextInt();
            opt.add(input03);
            i++;
        }
        scan.close();

        for(int printCount = 0; printCount < count; printCount++) {
            if(opt.get(printCount) == 1) {
                calmTotal++;
            } else if(opt.get(printCount) == 2 && gender.get(printCount) == 2) {
                nervousF++;
            } else if(opt.get(printCount) == 3 && gender.get(printCount) == 1) {
                agrM++;
            } else if(opt.get(printCount) == 1 && gender.get(printCount) == 3) {
                calmO++;
            } else if(opt.get(printCount) == 2 && age.get(printCount) > 40 ) {
                nervousOld++;
            } else if(opt.get(printCount) == 1 && age.get(printCount) < 18) {
                calmYoung++;
            }
        }

        System.out.println("\nO número de pessoas calmas foi: " + calmTotal);
        System.out.println("\nO número de mulheres nervosas foi: " + nervousF);
        System.out.println("\nO número de homens agressivos foi: " + agrM);
        System.out.println("\nO número de outros calmos foi: " + calmO);
        System.out.println("\nO número de pessoas nervosas com mais de 40 anos: " + nervousOld);
        System.out.println("\nO número de pessoas calmas com menos de 18 anos: " + calmYoung);
        
    }
}