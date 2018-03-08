# ![JantarFilosofos](dining.png)

[![Gem Version][gem-image]][gem-link]

[gem-image]: https://badge.fury.io/rb/celluloid.svg
[gem-link]: http://rubygems.org/gems/celluloid

## O problema - Jantar dos Filósofos

[Jantar dos Filósofos - Dining Philosophres](https://en.wikipedia.org/wiki/Dining_philosophers_problem)


## Instalação

Faça um git clone no projeto na sua pasta de escolha:

    git clone git@github.com:handersonbf/jantarDosFilosofos.git

Acessando a pasta do projeto execute:

    $ bundle install


## Estrutura

Com DeadLock

    /deadlock

Solução com Mutex

    /mutex

Solução com Actor Based

    /actor

## Para executar respectivamente

Com DeadLock

    $ ruby deadlock/iniciar_jantar.rb

Solução com Mutex

    $ ruby mutex/iniciar_jantar.rb

Solução com Actor Based

    $ ruby actor/iniciar_jantar.rb


## License

Pode baixar, alterar fazer fork :) é para estudo!