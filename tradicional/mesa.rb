class Mesa
    def initialize(numero_assentos)
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
        @pauzinho.select { |f| f.in_use? }.size
    end
end