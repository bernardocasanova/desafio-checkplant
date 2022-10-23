## Problema do miojo

João é um fanático por miojos; ele os adora, e, como era de se esperar, ele levou vários pacotes quando foi acampar com seus colegas. Como João só gosta de miojos feitos com o tempo exato, ele se desesperou ao perceber que havia esquecido seu relógio em casa. Por sorte, ele conseguiu, no caminho, comprar duas ampulhetas de durações diferentes. Por exemplo, se o miojo precisa de 3 minutos para ficar pronto, e João tiver uma ampulheta de 5 minutos e outra de 7, uma possível forma de cozinhar o miojo é:

- João começa virando as duas ampulhetas ao mesmo tempo.
- Quando a areia da ampulheta de 5 minutos se esgotar, João torna a virá-la.
- João começa a preparar o miojo quando a areia da ampulheta de 7 minutos acabar.
- João tira o miojo do fogo quando a ampulheta de 5 minutos acabar novamente.
- Dessa forma, o miojo ficará 3 minutos no fogo (do minuto 7 ao minuto 10). Assim, apesar do miojo levar apenas três minutos para ser cozido, ele precisa de 10 minutos para ficar pronto.

Faça um programa que, dado o tempo de preparo do miojo, e os tempos das duas ampulhetas (ambos maiores que o tempo do miojo), determina o tempo mínimo necessário para o miojo ficar pronto ou se não é possível cozinhar o miojo no tempo exato com as ampulhetas disponíveis.

```
Execução
ruby noodles.rb noodlesTime hourGlass1 hourGlass2

ex: ruby noodles.rb 3 5 7

noodlesTime = Tempo de preparo do miojo
hourGlass1 = Tempo da ampulheta 1
hourGlass2 = Tempo da ampulheta 2
```
--------------------------------------------------------------------

## Distância entre Pontos

Esse é mais simples, a ideia é criar um programa que recebe N pontos
(latitude e longitude) e retorna a distância entre eles, ou seja a
distância do primeiro ponto para todos os outros pontos, do segundo
ponto para todos os outros pontos…e assim por diante...

```
Execução
ruby distance.rb

Para adicionar mais pontos (latitude e longitude) basta inserir dentro do array locations que esta no arquivo distance.rb

ex: locations = [
    [3.1502978,101.6511437],
    [3.1560868,101.6574744],
    [3.1560268,101.6271740]
  ]
```