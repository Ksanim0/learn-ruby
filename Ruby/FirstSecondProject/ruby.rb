username = ENV['USER'] || ENV['LOGNAME']
consecionaria = Hash.new
cont = 0


loop do
puts "1- Registrar Veículo"
puts "2- Visualizar veículos"
puts "3- Editar veículos"
puts "4- Apagar veículos"
puts "5- Sair"
puts "Bem vindo ao cadastro de veiculos senhor #{username}, selecione a opção que deseja para proseguir"

opcSELEC = gets.chomp.to_i


if opcSELEC == 1
    puts "Digite o nome do carro a ser registrado: "
    carro = gets.chomp
    puts "Digite a placa do carro que será registrado: "
    placa = gets.chomp

    consecionaria[carro] = placa
    puts "Carros registrados:  #{consecionaria}"
end

if opcSELEC == 2
    puts consecionaria
end

if opcSELEC == 3
    puts consecionaria
    puts "Indique qual carro você deseja editar: "
    mudarcarroNOME = gets.chomp

    puts "Novo nome do carro: "
    novoCarro = gets.chomp
    puts "Nova placa: " 
    placaNOVA = gets.chomp
    consecionaria[novoCarro] = placaNOVA

    consecionaria.delete(mudarcarroNOME)
    
    #puts "Nova placa: "
    
end

if opcSELEC == 4
    puts consecionaria.keys
    puts "Digite o nome do carro a ser excluído: "
    deletar = gets.chomp
    
    valorDELLL=consecionaria.delete(deletar)
end    

if opcSELEC == 5
    puts "Até Mais"
    exit(0)
end    
end