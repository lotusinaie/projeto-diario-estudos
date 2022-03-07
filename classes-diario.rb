class Categoria
  attr_accessor :numero, :nome
  def initialize(numero:, nome:)
    @numero = numero
    @nome = nome
  end
end

class Item
  attr_accessor :nome, :categoria
  def initialize(nome:, categoria:)
    @nome = nome
    @categoria = categoria
  end
end
