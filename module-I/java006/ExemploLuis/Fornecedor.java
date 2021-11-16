package ExemploLuis;

public class Fornecedor extends Pessoa {
    private double valorCredito;
    private double valorDivida;

    public Fornecedor(String nome, String endereco, String cpf, int telefone, int idade, double valorCredito,
            double valorDivida) {
        super(nome, endereco, cpf, telefone, idade);
        this.valorCredito = valorCredito;
        this.valorDivida = valorDivida;
    }

    public void imprimirInfo() {
        System.out.println("\nNome do operario: " + getNome() + "\nCPF: " + getCpf() + "\nIdade:" + getIdade()
                + "\nTelefone: " + getTelefone() + "\nEndereço: " + getEndereco() + "\nValor Crédito: " + valorCredito
                + "\nValor divida: " + valorDivida);
    }

    public void obterSaldo() {
        double diferencaCredito = valorCredito - valorDivida;
        System.out.println("\nO saldo referente ao fornecedor é igual a: " + diferencaCredito);
    }

    public double getValorCredito() {
        return valorCredito;
    }

    public void setValorCredito(double valorCredito) {
        this.valorCredito = valorCredito;
    }

    public double getValorDivida() {
        return valorDivida;
    }

    public void setValorDivida(double valorDivida) {
        this.valorDivida = valorDivida;
    }

}
