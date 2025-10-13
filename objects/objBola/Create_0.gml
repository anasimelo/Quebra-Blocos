//Começo criando uma variavel de velocidade
velocidade = 3

//Depois crio variaveis de direção
/* "Jeito errado"
direcaoVertical = 0
direcaoHorizontal = 0
*/
/*
Só que tem um erro
As direções só começão em zero, quando eu estou no inicio do jogo, ou seja,
Apenas quando a bola está sobre o player, para consetar isto, vamos verificar
Se já um player abaixo da bola, lembrando que por estar no create, - 
- irá funcionar apenas quando for criada
Mas para checar se há um player abaixo, terermos que usar uma função
No caso, uma que verifica se há ou não, um objeto abaixo, que é -
- a função place_meeting()
Descrição:
function place_meeting(x: Real, y: Real, obj: Id. TileMapElement OR -
- Asset.GMObject OR Id. Instance OR Constant. All OR Array) -> Bool
With this function you can check a position for a collision with another- 
-instance or all instances of an object
using the collision mask of the instance that runs the code for the check.
X The x position to check.
y The y position to check.
obj The instance or object to check for.

Função place_meeting(x: valor real, y valor real, obj: ID. ELemento do -
- TileMap ou Imagem do Asset ou Id da instancia ou Constante - 
- Todos os objetos ou vetor de objetos) retorno booleano
Com esta função, você consegue checar a posiçãopara uma colisão com outra -
- instancia ou todas as instances de um objeto(Ou sej,a uma instacia espefica
- ou com o tipo daquela instancia)
X A posição do x q queira checar
Y A posição do y que queira checar
obj A instancia ("ser") ou o objeto("tipo") para checar

*/
//"Jeito certo"


if place_meeting(x, y + 10, objPlayer){
	direcaoVertical = 0
	direcaoHorizontal = 0
}
else{
	//quando criarmos a bolinha pelo bloco
	// ela vai para uma direção aleatoria
	direcaoVertical = irandom_range(-1, 1)
	direcaoHorizontal = irandom_range(-1, 1)
	
	/* uma chance em 3 de vir mais rápida e duas em 3 de ir 
	para a direita*/
	if direcaoHorizontal == 0{
		direcaoHorizontal = 1.2
	}
	
	//duas chances em três de iniciar subindo
	if direcaoVertical == 0{
		direcaoVertical = -1
	}
}
/*
E também queremos que toda vez que o player perca
Seja criada uma bolinha acima do player
*/



//Varivel para validar se está no re/inicio do jogo
//se a variavel não existir, inicia ela como false
if ! variable_global_exists("isStart"){
	global.isStart= false
}