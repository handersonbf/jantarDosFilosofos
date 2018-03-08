
require_relative 'mesa'
require_relative 'garcom'
require_relative 'talher'
class Filosofo
   
    def initialize(nome)
        @nome = nome
    end
    
    def jantar(mesa, posicao)
        @talher_da_esquerda  = mesa.talher_da_esquerda(posicao)
        @talher_da_direita = mesa.talher_da_direita(posicao)
    
        loop do
            pensar
            comer
        end
    end
    
    def pensar
        puts "#{@nome} está pensando"
    end
    
    def comer
        pegar_talher
        puts "#{@nome} está comendo."    
        soltar_talher
    end
    
    def pegar_talher
        @talher_da_esquerda.pegar
        @talher_da_direita.pegar
    end
    
    def soltar_talher
        @talher_da_esquerda.soltar
        @talher_da_direita.soltar
    end
end
