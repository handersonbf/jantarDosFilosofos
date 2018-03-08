require 'celluloid'
require_relative 'filosofo'
require_relative 'garcom'
require_relative 'pauzinho'

class Mesa
    def initialize(numero_assentos)
        puts "Mesa com #{numero_assentos} assentos"
        @pauzinho  = numero_assentos.times.map { Pauzinho.new }
    end

    def pauzinho_da_esquerda(position)
        index = (position - 1) % @pauzinho.size
        @pauzinho[index]
    end

    def pauzinho_da_direita(position)
        index = position % @pauzinho.size
        @pauzinho[index]
    end

    def pauzinho_sendo_utilizado
        @pauzinho.select { |f| f.em_uso? }.size
    end
end