if global.isFimJogo{
	exit
}
/*
agora, quando as vidas que o player tem forem menores ou iguais ao
identificador, contara como vidas usadas,caso não,contará como vida cheia
Exemplo: Caso ela tenha 3 vidas
A primeira instancia do objVida esta cheia pois 3 não é 
menor ou igual ao identificador, pois ele armazena 1

a segunda instancia tambem ficara cheia, pois o identificadorVida
dela é dois, ou seja, não é maior ou igual 3

mas a terceira vida estara vazia,pois ela sim armazena 3 
que por sua vez, é maior ou igual a 3

e caso passe de três vidas,a primeira vida continuara cheia

como nosso jogo usaremos apenas 3 vidas, não precisaremos
criar instancias dentro do código ,mas caso futuramente
forem criar as instancias de vida dentro do jogo,usaremos
a função instance_create_layer(), que aprenderemos mais tarde
*/

if global.vidas <= identificadorVida{
	sprite_index = sprVidaUsada
}
else{
	sprite_index = sprBola
}