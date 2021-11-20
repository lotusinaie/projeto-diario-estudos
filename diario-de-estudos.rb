require "io/console"

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
    puts "Ações do #{entrada} aqui!"
  when "2"
    puts "Ações do #{entrada} aqui!"
  when "3"
    puts "Ações do #{entrada} aqui!"
  when "4"
    puts "Já está tudo finalizado e pronto para nos despedirmos! Até mais!"
    break
  else
    puts "Por favor, digite apenas algum dos números especificados!"
  end
  puts "Aperte qualquer tecla para continuar!"
  STDIN.getch
end
