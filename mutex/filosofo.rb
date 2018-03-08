
require_relative 'mesa'
require_relative 'garcom'
require_relative 'pauzinho'
class Filosofo
   
    def initialize(nome)
        @nome = nome
    end
    
    def jantar(mesa, posicao, garcom)
        @pauzinho_da_esquerda  = mesa.pauzinho_da_esquerda(posicao)
        @pauzinho_da_direita = mesa.pauzinho_da_direita(posicao)
    
        loop do
            pensar
            garcom.servir(mesa, self)
            # comer
        end
    end
    
    def pensar
        puts "#{@nome} está pensando"
    end
    
    def comer
        puts "#{@nome} está comendo."    
        soltar_pauzinho
    end
    
    def pegar_pauzinho
        @pauzinho_da_esquerda.pegar
        @pauzinho_da_direita.pegar
    end
    
    def soltar_pauzinho
        @pauzinho_da_esquerda.soltar
        @pauzinho_da_direita.soltar
    end
end
