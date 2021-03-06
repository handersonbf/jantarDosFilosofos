require_relative 'filosofo'
require_relative 'mesa'
require_relative 'garcom'
require_relative 'talher'

class IniciarJantar

    def initialize
        
        nomes = %w{Aristotle Schopenhauer Descartes Agostino Hegel Platão Sócrates}
        
        nomes.map { |n| puts n}

        filosofos = nomes.map { |name| Filosofo.new(name) }
       
        mesa  = Mesa.new(filosofos.size)

        threads = filosofos.map.with_index do | filosofo, i|
            Thread.new { filosofo.jantar(mesa, i) }
        end

        threads.each(&:join)
        sleep
    end
end

IniciarJantar.new