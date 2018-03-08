require_relative 'filosofo'
require_relative 'mesa'
require_relative 'talher'

class Garcom
    def initialize(capacidade)
        @capacidade = capacidade
        @mutex    = Mutex.new
    end

    def servir(mesa, filosofo)
        @mutex.synchronize do
            sleep(rand) while mesa.talher_sendo_utilizado >= @capacidade 
            filosofo.pegar_talher
        end

        filosofo.comer
    end
end