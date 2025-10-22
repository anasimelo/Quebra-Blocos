/*Como agora podemos destruir os blocos, assim que forem destruidos,
iremos almentar os pontos
*/

global.pontos += 10
//agora que configuramos os pontos, iremos mostra-los na tela
//Vamos criar o objPontos

//Diminui a quantidade
global.quantBlocos--
/*
para podermos fazer o controle de criação dos blocos,vamos criar
um obj só para isso


/*vamos verificar qual era o tipo do bloco
se for com bola,iremos criar uma bola no lugar
que foi destruido */
if sprite_index == sprBlocoBola{
	//criamos a bola
	instance_create_layer(x,y, "Instances", objBola)
}

if sprite_index == sprBlocoVida{
	//cria vida
	instance_create_layer(x,y,"instances", objVidaColetavel)
}