// 1) Crie uma classe cliente e apresente os atributos e métodos referentes
// esta classe, em seguida crie um objeto cliente, defina as instancias deste
// objeto e apresente as informações deste objeto no console.

class client {
    int clientId;
    String name;

    void getId(int id){
        clientId = id;
    }

    void fullName(String firstName, String lastName) {
        name = (firstName + " " + lastName);
    }

    void display() {
        System.out.println("Nome completo: " + name);
        System.out.println(clientId + " ");
    }
}



public class ex01{
    public static void main(String[] args) {
        client num001 = new client();
        num001.fullName("Geroncio", "Arruda");
        num001.getId(123123123);
        num001.display();
    }
}