require_relative 'filosofo'
require_relative 'mesa'
require_relative 'garcom'
require_relative 'talher'

class IniciarJantar

    def initialize
        puts "Iniciando o Jantar..........."

        nomes = %w{Aristotle Schopenhauer Descartes Agostino Hegel Platão Sócrates}

        filosofos = nomes.map { |nome| Filosofo.new(nome) }

        garcom = Garcom.new
        mesa = Mesa.new filosofos.size 

        filosofos.each_with_index do |filosofo, i| 
            filosofo.async.jantar(mesa, i, garcom) 
        end

        sleep
    end
end

IniciarJantar.new

