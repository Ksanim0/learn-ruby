username = ENV['USER'] || ENV['LOGNAME']
consecionaria = Hash.new


loop do
puts "Bem vindo ao cadastro de veiculos senhor #{username}, selecione a opção que deseja para proseguir"
opcSELEC = gets.chomp.to_i


if opcSELEC == 1
    carro = gets.chomp
    placa = gets.chomp

    consecionaria[carro] = placa
end

if opcSELEC == 2
    puts consecionaria
end

if opcSELEC == 3
    puts consecionaria
    puts "Indique qual carro você deseja excluir: "
    delete = gets.chomp.to_i
    consecionaria.delete(delete)
end

opcSELEC == 0
end