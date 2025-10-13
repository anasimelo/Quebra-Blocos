/*
agora queremos criar uma contador para os blocos quebrados, mas como
já sabemos a quantidade exata de blocos, vamos contar a quantodade de blocos
futuramente,caso queira criar a quantidade exata idependente da quantidade
é só usar a lógica do contador de vidas
ou seja, apenas criaremos os blocos, e quando todos forem destruidos
iremos recria-los
*/

//e agora,toda vez que um bloco for destruido,ele diminuirá em 1
// a quantBlocos

//mesma teoria de criação das variaveis globais
if! variable_global_exists("posicaoCerta"){
	global.posicaoCerta = false
}

/*
Inicio dos poderes

vamos estipular um valor de cada poder, por enquanto
vamos utilizar a randomização com os números de 1 a 14
sendo entre 13 e 14, sera um bloco com bola

para aleatorizar, usaremos a função irandom_range()
descrição:
function irandom_range(n1: real,n2:real)-> real
this fuction is similar to random_range() only with
integer values as input.
n1 the low end of the rangefrom whitch the random
number will be selected
n2 the hing end of the rangefrom whitch the random
number will be selected.

função irandom_range(n1: valor real,n2: valor real) retorno valor real
essa função é similar a função random_range(), mas com valores 
inteiros
n1: o menor número do intervalo de que você deseja randomizar
n2: o maior número do intervalo de que você deseja randomizar

e caso tire o valor desejado, iremos transformar o sprite no sprite
que tenha a bola
*/

tipoBloco =  irandom_range(1,14)

if tipoBloco >= 13{
	sprite_index = sprBlocoBola
}