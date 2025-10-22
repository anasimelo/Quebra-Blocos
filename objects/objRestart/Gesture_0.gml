//toda vez que clicarmos no botão
//resetaremos todas as variaveis do jogo, e depois esconderemos as telas de morte

//Reset dos pontos
global.pontos = 0

//reset vidas
global.vidas = 3

//reset inicio do jogo
global.isStart = false

//não havera blocos nas posições certas
global.posicaoCerta = false

//não havera blocos
global.quantBlocos = 0

//não ha bolinhas
global.quantBolinhas = 0

//a quantidade de vida  mostrada, iniciara vazia
global.quantVidas = 0

//reiniciaremos o jogo
room_restart()


/* professor, por que resetamos todas as variaveis,se vamos usar o room restart?
pois,quando usamos o room_restart, ele não apaga a existencia das variaveis globais
fazemdo com que os nossos computadores não voltem ao estado inicial */

//por fim, escondemos as layers de morte
layer_set_visible("telademorte",false)
layer_set_visible("telaMorteFundo",false)