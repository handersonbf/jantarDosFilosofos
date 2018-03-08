require 'celluloid'
require_relative 'mesa'
require_relative 'garcom'
require_relative 'pauzinho'

class Filosofo
    include Celluloid

    def initialize(nome)
        puts "Filosofo: #{nome} sentou na mesa!"
        @nome = nome
    end
    
    def jantar(mesa, posicao, garcom)
        @garcom = garcom
        @pauzinho_da_esquerda  = mesa.pauzinho_da_esquerda posicao
        @pauzinho_da_direita = mesa.pauzinho_da_direita posicao
    
        pensar
    end
    
    def pensar
        puts "#{@nome} está pensando"
        sleep(rand)

        @garcom.async.pedido_para_comer Actor.current
    end
    
    def comer
        pegar_pauzinho

        puts "#{@nome} está comendo."    
        sleep(rand)

        soltar_pauzinho

        @garcom.async.terminou_de_comer Actor.current

        pensar
    end
    
    def pegar_pauzinho
        @pauzinho_da_esquerda.pegar
        @pauzinho_da_direita.pegar
    end
    
    def soltar_pauzinho
        @pauzinho_da_esquerda.soltar
        @pauzinho_da_direita.soltar
    end

    def finalize
        soltar_pauzinho
    end

    def nome
        @nome
    end
end