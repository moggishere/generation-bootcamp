package ExemploLuis;

public class Operario extends Pessoa {
    private double valorProducao;
    private double comissao;

    public Operario(String nome, String endereco, String cpf, int telefone, int idade, double valorProducao,
            double comissao) {
        super(nome, endereco, cpf, telefone, idade);
        this.valorProducao = valorProducao;
        this.comissao = comissao;
    }

    public void imprimirInfo() {
        System.out.println("\nNome do operario: " + getNome() + "\nCPF: " + getCpf() + "\nIdade:" + getIdade()
                + "\nTelefone: " + getTelefone() + "\nEndereço: " + getEndereco() + "\nValor produção: " + valorProducao
                + "\nPorcentagem (sem o %) da comissão deste operario: " + comissao);
    }

    public void calcularValorProducao() {
        double valorTotal = valorProducao + (valorProducao * (comissao / 100));
        System.out.println(
                "\nO valor total da produção a ser recebido pelo operario: " + getNome() + " é igual a: " + valorTotal);
    }

    public double getValorProducao() {
        return valorProducao;
    }

    public void setValorProducao(double valorProducao) {
        this.valorProducao = valorProducao;
    }

    public double getComissao() {
        return comissao;
    }

    public void setComissao(double comissao) {
        this.comissao = comissao;
    }
}
