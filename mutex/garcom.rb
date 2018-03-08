require_relative 'filosofo'
require_relative 'mesa'
require_relative 'pauzinho'

class Garcom
    def initialize(capacidade)
        @capacidade = capacidade
        @mutex    = Mutex.new
    end

    def servir(mesa, filosofo)
        @mutex.synchronize do
            sleep(rand) while mesa.pauzinho_sendo_utilizado >= @capacidade 
            filosofo.pegar_pauzinho
        end

        filosofo.comer
    end
end