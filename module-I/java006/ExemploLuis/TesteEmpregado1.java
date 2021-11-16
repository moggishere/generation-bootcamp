package ExemploLuis;

public class TesteEmpregado1 {
    public static void main(String[] args) {
        Empregado1 empregado = new Empregado1("Juliana", "Rua Marola,123", "24445566789", 948484848, 26, 233, 2500, 15);

        empregado.imprimirInfo();
        empregado.calcularSalario();
    }
}
