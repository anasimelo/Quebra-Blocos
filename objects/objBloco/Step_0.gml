if global.isFimJogo{
	exit
}
/*Assim que terminar vamos descer todos os blocos até
um chegar na posição que queremos
a validação vai ser,se não houver bloco nesta posição, continue descendo,e
para validar,vamos criar uma variavel global de verdadeiro ou falso
e assim que tiver um bloco na posição certa ele pulara o código*/

//nós usaremos uma função parecida com o break,ou seja,pulara o código
if global.posicaoCerta{
	exit
}

if y < 320 {
	y ++
}
else{
	global.posicaoCerta = true
}