package java005package;
// 1) Crie uma classe cliente e apresente os atributos e métodos referentes
// esta classe, em seguida crie um objeto cliente, defina as instancias deste
// objeto e apresente as informações deste objeto no console.

import java.util.ArrayList;
class client {
    int clientId;
    String name;
    ArrayList<String> purchaseList = new ArrayList<String>();

    void getId(int id){
        clientId = id;
    }

    void fullName(String firstName, String lastName) {
        name = (firstName + " " + lastName);
    }

    void purchaseList(String purchase01, String purchase02, String purchase03, String purchase04) {
        purchaseList.add(purchase01);
        purchaseList.add(purchase02);
        purchaseList.add(purchase03);
        purchaseList.add(purchase04);
    }

    void display() {
        System.out.println("Nome completo: " + name);
        System.out.println(clientId + " ");
        System.out.println("Compra: " + purchaseList);
    }
}



public class ex01{
    public static void main(String[] args) {
        client num001 = new client();
        num001.fullName("Geroncio", "Arruda");
        num001.getId(123123123);
        num001.purchaseList("apple", "orange", "kiwi", "soap");
        num001.display();
    }
}