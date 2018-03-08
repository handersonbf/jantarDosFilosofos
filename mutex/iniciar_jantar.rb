require_relative 'filosofo'
require_relative 'mesa'
require_relative 'garcom'
require_relative 'talher'

class IniciarJantar

    def initialize
        
        names = %w{Aristotle Schopenhauer}
        
        names.map { |n| puts n}

        filosofos = names.map { |name| Filosofo.new(name) }
       
        mesa  = Mesa.new(filosofos.size)
       
        garcom = Garcom.new(filosofos.size - 1)
       

        threads = filosofos.map.with_index do | filosofo, i|
            Thread.new { filosofo.jantar(mesa, i, garcom) }
        end

        threads.each(&:join)
        sleep
    end
end

IniciarJantar.new