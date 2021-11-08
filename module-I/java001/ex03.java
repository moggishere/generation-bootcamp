// 3. Faça um sistema que leia o tempo de duração de um evento em uma fábrica
// expressa em segundos e mostre-o expresso em horas, minutos e segundos.
import java.util.*;

public class ex03 {
    public static void main(String[] args) {
        int totalSec;
        Scanner scan = new Scanner(System.in);
        System.out.println("\nDigite o total de segundos: ");
        totalSec = scan.nextInt();
        scan.close();
        int hours, min, sec;
        hours = totalSec/3600;
        totalSec -= hours*3600;
        min = totalSec/60;
        totalSec -= min*60;
        sec = totalSec;
        System.out.println("\nForam " + hours + " horas " + min + " minutos " + sec + " segundos");
    }
}
