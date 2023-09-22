hash = {"carro"=>"placa123", "carro2"=>"placa321", "carro3"=>"321acalp"}

state_file = File.open("log.txt")
carro = []
    first_line = state_file.gets.chomp
    puts first_line


while ! state_file.eof?
    first = state_file.gets.chomp
    carro << first
end