# importa a classe que será testada
require 'calculator'

# declara a classe a ser testada
# describe Calculator do
  # Instancia uma variável com o SUBJECT para utilizar nos testes
  # subject(:calc) { described_class.new() }

  # ooooooooooouuuuuuu

# declara a classe a ser testada como uma string de descrição
describe 'Classe calculadora' do
    # Instancia uma variável com o nome da classe para utilizar nos testes
    subject(:calc) { Calculator.new() }

  # Estabele um contexto para metodos que trabalham uma mesma função
  # Para metodos de instância utiliza-se o #
  # Para metodos de classe utiliza-se o .
  context '#sum' do
    # declara o teste que será realizado
    it '2 numbers positives' do
      # setup -> configura o ambiente do teste
      # Para não instanciar a classe Calculator a cada teste basta aplicar o SUBJECT  
      # calc = Calculator.new
      # Exercise -> executa o teste
      # result = subject.sum(5, 7)
      result = calc.sum(5, 7)
      # verify -> verifica o resultado do teste
      expect(result).to eq(12)
    end

    it '2 numbers negatives' do
        # calc = Calculator.new
        # result = subject.sum(-5, -3)
        result = calc.sum(-5, -3)
        expect(result).to eq(-8)
      end
  end
end
