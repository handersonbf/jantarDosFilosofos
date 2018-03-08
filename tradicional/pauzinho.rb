class Pauzinho 
    
    def initialize
        @mutex = Mutex.new
    end

    def pegar
        @mutex.lock
    end

    def soltar
        @mutex.unlock

        rescue ThreadError
        puts "Tentando soltar um pauzinho não adquirido"
    end

    def em_uso?
        @mutex.locked?
    end
end
