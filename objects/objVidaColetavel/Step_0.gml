//primeiro o coração ficara descendo até encostar no player
if batidas == 0{
	y += 2
}
//se já tiver batido 5 vezes (uma para iniciar a contagem e as outras enquanto esta tentando pegar as vidas)
else if batidas == 5{
	 // destroi esse coração e aumenta a quant de vida
	 global.vidas++
	 instance_destroy()
}
//se nenhuma das anteriores
else{
	//começamos fazendo a conta da gravidade , no caso, pega o valor anterior e soma com a gravidade
	//isso fara o coração ficar subindo e descendo sempre que acertarmos ele
	velocidadePulo += gravidade
	
	//No fim soma o y
	y += velocidadePulo
	//soma a direção horizontal
	x += direcaoHorizontal
	
	//faz o coração girar
	image_angle += giro
}