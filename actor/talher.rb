require 'celluloid'
require_relative 'filosofo'
require_relative 'mesa'
require_relative 'garcom'

class Talher 
    
    def initialize
        @mutex = Mutex.new
    end

    def pegar
        @mutex.lock
    end

    def soltar
        @mutex.unlock

        rescue ThreadError
        puts "Tentando soltar um talher não adquirido"
    end

    def em_uso?
        @mutex.locked?
    end
end
