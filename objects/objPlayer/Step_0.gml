if global.isFimJogo{
	exit
}
/*
Vamos começar criando a movimentação do player
Para isto usaremos uma função que retorna verdadeira ou falso a partir
De qual tecla eu passei
Esta função é a keyboard_check():
Descrição dela:
function keyboard_check(key: Constant. - 
- VirtualKey OR Real) -> Bool
With this function you can check to see -
- if a key is held down or not.
key The key to check the down state of.

Tradução:
Função keyboard_check(tecla: Constante. Tecla -
- ou valor real (decimal)) retorno booleano
Com esta esta função vocÊ consegue checar se a -
- tecla esta sendo segurada ou não
tecla: Tecla a qual voce deseja checar se foi apertada

No noso caso, queremos que funcione tanto com as setas
Quanto com o WASD
Para as setas é bem simples, pois qualquer - 
 - tecla que não for relecionado a  lingua (letras e -
 - acentos) pode ser encontrado com vk_ e - 
 o nome da tecla em inglês 
exp:
 alt = vk_alt
 ctrl = pode ser tanto o esquerdo(vk_lcontrol) -
  - tanto o direito (vk_rcontrol) ou os -
  - dois (vk_control)
esc = vk_escape

Para fazr a leitura das letras, iremos usar outra -
- função, a função ord()
Descrição do ord():
function ord(string: String) -> Real
This function takes a single character input -
- string and returns the Unicode (UTF8) -
- value for that character.
string The string with which to find the Unicode code.

Tradução:
Função ord(texto: valor String) retorno real
Esta função pega um caracter unico,  -
- insere em uma string e retorna um valor Unicode(UTF8) -
- para aquele caracter (basicamente a posição -
- dele no teclado)
texto: se refere ao texto que queria achar o código no - 
- tipo Unicode
E assim como no teclado, as letras tem que - 
- ser colocadas em caixa alta 

E como queremos que ele ande com as duas opções (setas -
 - e letras) teremos que colocar um condição -
 - de 1 ou outro
Sabendo disso, qual operador teremos que utilizar? o or
Exp
if keyboard_check(vk_left) or keyboard_check(ord("A")) 

Mas como a função keyboard_check() possui retorno, -
- podemos armazernalo, pois exceto quando -
- o retorno é vazio ou indefinido, podemos armazena-lo
Por isso criaremos variaveis para cada direção
No nosso caso as variáveis teclaEsc e teclaDir -
- que irão receber o retorno das função keyboard_check()
****Lembrando que true e false podem ser 1 e 0 -
- respectivamente
*/
teclaEsq = keyboard_check(vk_left) or keyboard_check(ord("A")) 
teclaDir = keyboard_check(vk_right) or keyboard_check(ord("D"))

/*
Configuramos as teclas, agora, falta definirmos para qual direção -
- vai cada tecla
Nós sabemos que o player apenas se movimenta para esquerda -
- e para direita
Ou seja, ele se move na horizontal
Se ele se move na horizontal, qual o valor que iremos mexer?
No x ou y? No x
Sabendo disso, nós apenas temos que definir qual tecla aumenta -
- este valor, e qual o diminui
*******Lembrando que o jogo funciona que nem em matrizes ou uma -
	   - tabela do excel, ou seja, o menor ponto visivel é 0
	   - e o maior é o temanho do jogo/camera tanto no x, quanto -
	   -  no y
Se quisermos ir para a esquerda, devemos aumentar ou diminuir -
- o valor? Diminuir
E para a direita devemos? Aumentar
Para fins de entendimento, iremos usar uma variavel que -
 - recebe o valor de ambas as variaveis sendo que -
 - a telcaEsq será negativa e a teclaDir positiva e ao fim -
 - iremos multiplicar o resultado da soma das duas variaveis -
 - pela velocidade
 Ou seja, se apertamos apenas para a esquerda, o valor da variavel-
 - ficará -3, e caso apertemos para direita, ficará + 3
E caso as duas sejam apertadas, resultará em 0, não movendo o  player

Criando a varivel para armazenar a movimentação
****** Lembrando que assim como na matemática, ao utilizar -
- parenteses "()", o que está dentro deles, será realizado -
- antes do que está fora
*/
movimentacao = (- teclaEsq + teclaDir) * velocidade

//Por fim, iremos somar o valor de movimentacao ao valor de x

x += movimentacao
/*
Para evitar que o player saia pelas laterais, iremos usar denovo
a função place_meeting()
*/
//Se eu saio, então eu subtraio o valor anterior
if place_meeting(x + movimentacao, y, objColisao){
	x -= movimentacao
}


