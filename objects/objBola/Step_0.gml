/*
Primeiro, no inicio do jogo, a bola vai acompanhar o player
Por enquanto, vamos apenas checar se as direções são iguais a zero
Se sim, vamos seguir o player
*/
/* Jeito "errado" de verificar o incio do jogo
if direcaoHorizontal == 0 and direcaoVertical == 0{
	x = objPlayer.x
}
*/
/*E para começar o jogo, vamos adcionar a tecla W ou seta para cima
Mas, temos que fazer uma validação para isto, então vamos criar uma
- variavel
*/

// Jeito "certo"
//Então caso o jogo não esteja iniciado, iremos seguir o player
//E esperar a tecla para cima ser apertada
if ! global.isStart{
	x = objPlayer.x
	y = objPlayer.y -10
    direcaoVertical = 0
	direcaoHorizontal = 0
	if keyboard_check(vk_up) or keyboard_check(ord("W")){
		//Assim que apertado, inciamos o jogo
		global.isStart = true
		direcaoVertical = -1
		
	/*
	 Vamos calcular se estamos na esquerda ou na direita da sala
	 a partir do meio da mesma
	 Para calculat o meio, pegamos a largura da sala e dividimos
	 por dois, ou seja, calculamos a metade 
	 Se eu estiver antes da metade (o meu x é menor que a metade -
	 - da sala)estou na esquerda, portanto  a bola irá para a direita
	 Se eu estiver no meio ou depois da metade da largura ( me x-
	 - é igual ou maior que a metade da lrgura), estou na direita
	 - portanto a bola irá para a esquerda
	 */
	 
	 if x < room_width /2{
		 direcaoHorizontal = 1
	 }
	 else{
		 direcaoHorizontal = -1
		 }
	}
}
//Se começou o jogo
else{
	/*
		Primeiro, vamos criar as rebatidas da bola 
		para isto, iremos usar novamente a função place_meeting()
		Só que desta vez, verificando de há colisão das paredes ou 
		com o player
		Então, dependendo de onde a bola bater, ela irá na direção
		oposta
		Ou seja , se bater na esquerda no objColisao, ela vai
		para direita
		Se bater na direita noobjColisao, ela vasi para esquerda
		se bater encima,vai para baixo
		e por fim, se ela estiver indo para baixo e colidir com o 
		player,ela voltará a subir 
		explicação da função place_meeting: objBola.create linha 18
		*/
	//Verificar a colisão na esquerda
	if place_meeting(x - 3, y,objColisao){
		direcaoHorizontal = 1
	}
	//Verificar a colisão na direita
	if place_meeting(x + 3,y, objColisao){
		direcaoHorizontal = - 1
	}
	
	//Verificar colisão acima
	if place_meeting(x, y - velocidade, objColisao){
		direcaoVertical = 1
	}
	
	//Com o objPlayer
	if place_meeting(x, y + velocidade, objPlayer){
		direcaoVertical = -1
	}
	
	//começo da destruição dos blocos
	/*
	Nós queremos que, toda vez que eu acertar um bloco
	Iremos mandar a bolinha para outro lado e destruir
	o bloco que acertamos 
	Mas como até agora nós apenas verificamos com o
	"tipo" , não importava com qual instacia eu fiz colisão
	só que agora, queremos destruir uma especifica
	para isso,nos temos que, verificar se aconteceu uma colisão
	e se aconteceu, vamos pegar a identificação daquela instancia
	e destruila
	para isso usaremos a função instance_place()
	descrição da função
	function instance_place(x: real, obj:-Id. TileMapElement or Asset. GMObject OR
	Constant.All OR Arry) -> Id.instance
	whith this function you can check a position of collision
	whith another instance or all instances of an object
	using the collision mask of the instance that runs the code
	for the check.
	x The x position to check for instances.
	Y The y position to check for instances.
	obj The object position to check for instances of.
	
	Tradução:
	*/
}
//No fim soma a direções em suas respectivas variaveis vezes
//a velocidade

x += direcaoHorizontal * velocidade
y += direcaoVertical * velocidade