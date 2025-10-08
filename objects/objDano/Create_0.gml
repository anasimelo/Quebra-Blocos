/*
Toda vez que criamos a instancia do objDano nós 
usaremos um novo evento, o alarm
sobre o alarm temos algumas coisas a dizer
primeiro é que eles funcionam como vetores, ou seja,
o primeiro alarm, vai ser o alarm na posição 0
o segundo na posição 1, etc
segundo para eles funcionarem, temos que passar um tempo
para eles, e ao final do tempo, eles executaram  código
terceiro eles funcionam a base de fps(frames por segundos)
como cada segundo possui 60 frames,para cada segundo
que quisermos, usaremos a base e 60, e depois
multiplicaremos ou dividiremos pela quantidade que quisermos
ou seja, caso queiramos que algo aconteça daqui a dois 
segundos no primeiro alarm, a sintax ficaria assim
alarm[0] = 60 * 2
*/
alarm[0] = 60 * 2