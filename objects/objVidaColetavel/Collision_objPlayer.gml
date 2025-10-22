//toda vez que colidir com o objPlayer 
//aumentamos o número de batidas
batidas++

//diminuimos o valor da velocidade pulo(consideravelmente,fazendo o oração subir)
velocidadePulo = -4

//se o coração tivesse pulado para direita,vai pular para a  esquerda
//e vice-versa
if direcaoHorizontal > 0{
	direcaoHorizontal = -1.2
	giro = -5
}
else{
	direcaoHorizontal = 1.2
	giro = 5
}