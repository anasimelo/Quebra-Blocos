if global.isFimJogo{
	exit
}

/*
o outside room é ativado toda vez que a instacia sai da sala
como temos apenas uma direção possivel para sair 
iremos utilizala
ok,como vamos utilizala?
nós queremos que toda vez que a bolinha sair da tela
1- diminua a quantidade de vida em 1
2- faça uma animação de dano
3- crie uma nova bolinha

então, primeiro vamos começar pelo mais facil, diminuir a 
quantidade de vidas em 1
*/

global.quantBolinhas--
instance_create_layer(x, room_height - 32, "Instances", objDano)
instance_destroy()

if global.quantBolinhas > 0{
	exit
}

global.vidas--

/*
primeira parte feita, agora iniciaremos auma animação de dano
para isso croaremos um objeto chamado objDano, e cria-lo
no x onde a bolinha saiu,deixar até a animação acabar e
depois destrui-lo
assim que sair,vamos criar uma instancia do objDano
mas como criamos uma instancia?
para isso usaremos a função instance_creater_layer
descrição:
function instance_create_layer(
x:real,
y:real,
layer_id:string or Id. layer,
obj: Asset.GMObject,
)
[var_struct: Struct]
-> Id. Instance
whith this fuction you can create a new istence of the
specified object at any given point within the room and
on the layer specified.
X The x position the object will be created at
Y The y position the object will be created at
layer_id the layerId (or name) to
assign the created instance to 
obj the object index of the object
to create an instance of
var_struct A structure theat
constains variables that are
copied into the new instance
before the create event is
called

Tradução:
função instance_creater_layer(x: valor real,y:valor real.
layer_id: valor String ou ID da layer, obj:objeto do sistema)
[var_struct: Struct]retorno do Id de uma nova instancia
com esta função, você pode criar uma nova instancia de um objeto
especifico,em qualquer ponto da sala e em uma layer especifica
X a posição x do objeto a ser criado
Y a posição y do objeto a ser criado
layer_id o id da layer(ou o nome dela) para criar a instancia
var_struct:um estruturamento que contenha variaveis que são 
copiadas para a nova instancia antes do evento de criação ser 
chamado

então usaremos esta função para criar uma bola nova,
inclusive, caso queira alterar outras informaçõesda nova bola
você pode armazenar o id da nova instancia em uma nova variavel
*/

instance_create_layer(objPlayer.x, objPlayer.y - 10,
"Instances", objBola)
/*
assim que a bola sai,ela inicia, pois esquecemos de voltar
para falso, a variavel global isStart
*/
//Então é só trocar o valor da variavel
global.isStart = false

/*
tambem vamos criar o objDano aonde a bola saiu
a teoria é a mesma,só que desta vez,o x é da bola
e o y vai ser a borda de baixo da tela
*/

instance_create_layer(x, room_height - 32,"Instances",objDano)
/*
Mas como viram,a animação ficou infinita,então vamos
configurar para ela desaparecer depois de 2~3 segundos
*/

//item 3 feito, e além de criar bola nova vamos apagar a antiga
instance_destroy()

/*
percebemos que funcionou a criação de bolas, mas eladestroi
todas e reinicia o jogo, para isso não acontecer, vamos criar
uma variavel para contar a quantidade de bolas na tela
e enquanto houver bolas deixaremos o jogo continuar
usaremos novamente o exit, ou seja,caso tenha bolas,pularemos
o evento de destruição
*/