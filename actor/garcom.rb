require 'celluloid'
require_relative 'filosofo'
require_relative 'mesa'
require_relative 'talher'

class Garcom
    include Celluloid

    def initialize
        puts "Garçom foi chamado..."
        @comendo = []
    end

    def pedido_para_comer(filosofo)
        return if @comendo.include?(filosofo)

        @comendo << filosofo
        filosofo.async.comer
    end

    def terminou_de_comer(filosofo)
        puts "Filosofo #{filosofo.nome} terminou de comer!"

        @comendo.delete filosofo
    end
end