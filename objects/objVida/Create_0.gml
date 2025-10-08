/*
Quando a instancia do objVida for criada, ela irá criar um
identificador para ela
que irá começar em 1, e vai almentar após isto
faremos a verificação através da variavel global quantVidas 
se ela existir, ela aumentara a quantidade
se ela não existir, aumentara em 1 a varuavel
e após criar, para não perdermos o valor da identificação, iremos
armazenalo em uma variavel,para sabermos qual instancia équal
*/
if variable_global_exists("quantVidas"){
	global.quantVidas++
}
else{
	global.quantVidas = 1
}

identificadorVida = global.quantVidas