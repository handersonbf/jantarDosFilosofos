require 'celluloid'
require_relative 'mesa'
require_relative 'garcom'
require_relative 'talher'

class Filosofo
    include Celluloid

    def initialize(nome)
        puts "Filosofo: #{nome} sentou na mesa!"
        @nome = nome
    end
    
    def jantar(mesa, posicao, garcom)
        @garcom = garcom
        @talher_da_esquerda  = mesa.talher_da_esquerda posicao
        @talher_da_direita = mesa.talher_da_direita posicao
    
        pensar
    end
    
    def pensar
        puts "#{@nome} está pensando"
        sleep(rand)

        @garcom.async.pedido_para_comer Actor.current
    end
    
    def comer
        pegar_talher

        puts "#{@nome} está comendo."    
        sleep(rand)

        soltar_talher

        @garcom.async.terminou_de_comer Actor.current

        pensar
    end
    
    def pegar_talher
        @talher_da_esquerda.pegar
        @talher_da_direita.pegar
    end
    
    def soltar_talher
        @talher_da_esquerda.soltar
        @talher_da_direita.soltar
    end

    def finalize
        soltar_talher
    end

    def nome
        @nome
    end
end