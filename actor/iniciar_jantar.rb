require_relative 'filosofo'
require_relative 'mesa'
require_relative 'garcom'
require_relative 'pauzinho'

class IniciarJantar

    def initialize
        puts "Iniciando o Jantar..........."
        names = %w{Aristotle Schopenhauer}

        filosofos = names.map { |name| Filosofo.new(name) }
       
        garcom = Garcom.new
        mesa  = Mesa.new(filosofos.size)
        
        puts "vamos comecar a comer"
        filosofos.each_with_index do |filosofo, i|
            puts "O filosofo #{filosofo} ::#{i} está comecando a comerr....."
            filosofo.async.comer(mesa, i, garcom)
        end

        sleep 
    end
end

IniciarJantar.new