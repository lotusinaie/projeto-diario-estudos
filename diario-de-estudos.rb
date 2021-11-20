require "io/console"

itens = []

loop do
  puts `clear`
  puts "Olá, eu sou o seu diário de estudos particular e estou aqui para ajudar!

  ***********************************
  O que você gostaria de fazer?
  [1] Cadastrar um item para estudar
  [2] Ver todos os itens cadastrados
  [3] Buscar um item de estudo
  [4] Sair
  ***********************************"
  entrada = gets.chomp.strip
  case entrada
  when "1"
    puts "Digite o nome do item que você quer cadastrar!"
    item = gets.chomp.strip
    puts "Qual é a categoria de #{item}?"
    puts "[1] - Lógica em Ruby"
    puts "[2] - POO em Ruby"
    puts "[3] - Git e Terminal"
    categoria = gets.chomp.strip
    puts "O item #{item} é da categoria #{categoria}!"
    itens.push("#{categoria} - #{item}")
  when "2"
    puts "Os itens que estão cadastrados atualmente são:"
    puts itens
  when "3"
    puts "Digite alguma palavra chave para a sua pesquisa!"
    pesquisa = gets.chomp.strip.downcase
    puts "Segue(m) o(s) item(ns) com a palavra chave especificada:"
    for item in itens
      if item.downcase.include?(pesquisa)
        puts item
      end
    end
  when "4"
    puts "Já está tudo finalizado e pronto para nos despedirmos! Até mais!"
    break
  else
    puts "Por favor, digite apenas algum dos números especificados!"
  end
  puts "Aperte qualquer tecla para continuar!"
  STDIN.getch
end
