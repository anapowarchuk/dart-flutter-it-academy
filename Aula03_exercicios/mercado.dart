/*
Implemente um supermercado que possua um número de caixas definido durante sua instanciação. 
Os caixas devem possuir capacidade máxima de atendimento (# de clientes na fila) e que podem 
estar em funcionamento ou parados. A entrada de clientes deve ser feita via classe supermercado. 
A entrada de uma clientes na fila deve sempre ocorrer na fila menos cheia e que ainda tem condições
de atender. Deve haver um método na classe caixa, que faz com que o atendimento no caixa avance. O fim
do atendimento e a consequente redução da fila deve ser feita de forma probabilística, onde a chance
de finalizar um atendimento no caixa deve ser de 50 por cento. Todo cliente atendido deve ter um valor
de compra registrado para o supermercado saber o total faturado.
Caso um cliente não consiga ser atendido (não havia caixa aberto em condições de lhe atender) um valor
de  perda de faturamento também de ser anotado. Uma compra é de no mínimo R$ 10, podendo chegar até 
R$5000. Deve ser possível consultar o quanto o supermercado já faturou, quanto ele perdeu, quantos
clientes entraram no supermercado, quantos não foram atendidos, qual o valor da menor compra, da 
maior compra, número de caixas disponíveis, em funcionamento e parados.
 */
import 'dart:io';
import 'dart:math';

class Mercado {
  num _ncaixas;
  num lucro = 0;
  List caixas = [];
  Random random = new Random();

  Mercado(this._ncaixas);

  void definePessoasNaFila(_ncaixas) {
    for (int i = 0; i = _ncaixas; i++) {
      int randomNum = random.nextInt(50) + 0;
      caixas[i] = randomNum;
      Caixa c = Caixa(caixas[i]); //revisar aqui
      caixas[i] = c;
    }
  }

  void entradaClientes() {}
}

class Caixa {
  num _capMax;
  num pessoasNaFila = 0;
  bool status = true;

  Caixa(this._capMax);

  void abreCaixa() {
    status = true;
  }

  void fechaCaixa() {
    status = false;
  }

  void avancaAtendimento(int n) {
    pessoasNaFila -= n;
  }

  void addCliente(int n) {
    if (_capMax != pessoasNaFila) {
      pessoasNaFila += n;
    } else {
      print("Capacidade Máxima de Lotação Atingida.");
    }
  }
}

void main() {}
