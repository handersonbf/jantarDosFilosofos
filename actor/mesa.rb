require 'celluloid'
require_relative 'filosofo'
require_relative 'garcom'
require_relative 'talher'

class Mesa
    def initialize(numero_assentos)
        puts "Uma mesa com #{numero_assentos} assentos"
        @talher  = numero_assentos.times.map { Talher.new }
    end

    def talher_da_esquerda(position)
        index = (position - 1) % @talher.size
        @talher[index]
    end

    def talher_da_direita(position)
        index = position % @talher.size
        @talher[index]
    end

    def talher_sendo_utilizado
        @talher.select { |f| f.em_uso? }.size
    end
end