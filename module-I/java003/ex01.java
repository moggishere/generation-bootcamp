// 1- Informar todos os números de 1000 a 1999 que quando divididos por 11
// obtemos resto = 5. (FOR)

/**
 * ex01
 */
public class ex01 {
    public static void main(String[] args) {
        System.out.println("Os números entre 1000 e 1999 que quando dividos por 11 obtem-se o resto 5:");
        for(int count = 1000; count <= 1999; count++){
            if(count%11==5){
                System.out.print(count + "\t");
            }
        }
    }
    
}