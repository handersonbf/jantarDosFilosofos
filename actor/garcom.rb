require 'celluloid'
require_relative 'filosofo'
require_relative 'mesa'
require_relative 'pauzinho'

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
        @comendo.delete(filosofo)
    end
end