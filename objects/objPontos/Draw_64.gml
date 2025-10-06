/*
como não temos câmera, não importa usar o draw normal ou o draw gui
aqui usaremos uma função para desnhar
juntos tambem,aprenderemos a padronização de comandos dentro do game maker
primeiro,vamos definir o que queremos fazer
no nosso caso queremos desenhar um texto 
utilizado o objetivo, vamos separar as palavras chaves: desenhar e texto
com isto em mente, podemos traduzir os nomes para os equivalentes em inglês
desenhar fica draw e exto fica text
então, o padrão de criar funções independentes da linguagem usada
é nomear a função utilizando um verbo e se tiver um complemento colocar
depois 
como desenhar é um verbo, podemos pesquisar por draw, e como queremos 
desenhar um texto, colocamos o text após isto e vuala, achamos a função
draw_text()
Então, podemos definir que caso queiramos usar alguma função,podemos
acha-lá sem saber o nome préviamente, utilizando apenas palavras chaves
exemplo:
Se quisermos algo relacionado a desenho ,ao digitar draw,já aparecerá
as funções,variaveis, etc, relacionadas
caso seja algo relacionado as salas de jogo, colocamos room e aparecerá
tudo relacionado
se quisermos algo relacionado ao conteudo do texto,só digitar text
e assim por diante
agora iremos observar a descrição da função draw_text():
function draw_text(x:real,y: real, string:any) -> undefined
with this function you can draw any string at any
position within the room (for drawing real numbers you 
should use the string() function to convert them into text).
X The x coordinate of the draw string.
 The y coordinate of the draw string.
 string the string to draw.
 
 Tradução:
 Função draw_text(x:valor real,y: valor real,string: qualquer)
 retorno vazio ou indefinido
 com esta função você consegue desenhar qualquer texto em qualquer posição
 nesta sala () para desenhar números, você deve usar a função string()
 para converter eles em texto).
 X a coordenada x do texto desenhado
 Y a coordenada y do texto desenhado
 string: o texto para desenhar
 
 interessante,é que a propria função dizque, quendo formos desenhar
 um número ,temos que usar a função string()
 como queremos desenhar a quantidade de pontos, iremos usa-lá
 descrição:
 function string(val_or_format:Any,[...:Any*]) -> String
 with this fuction you can turn any value into a string.
 val_or_format The value to be torned into a string or a format string.
 ... Values to replace the placeholders with.
 
 Tradução:
 Função string(val_or_format: qualquer. [... ; Any*]) retorno tipo string
 com esta função, você consegue tornar qualquer valor em string
 val_or_format o valor para ser convertido em string ou um forma string
 ... Valores para serem trocados no placeholders
 
 ou seja, iremos informar que queremos converter a pontuação para texto
 e depois desenha-lá na tela
 Vamos aproveitar por causa das futuras mudanças, e ao invés de converter
 os pontos diretamente, iremos criar uma veriavel para isto
*/
//Para mostrarmos alguns zeros na frente,iremos verificar a quantidade
//atual de pontos e adicionar ou retirar zeros a partir dai
if global.pontos < 10{
	mensagem = "0000" + string(global.pontos)
}
else if global.pontos < 100{
	mensagem = "000" + string(global.pontos)
}
else if global.pontos < 1000{
	mensagem = "00" + string(global.pontos)
}
else if global.pontos < 10000{
	mensagem = "0" + string(global.pontos)
}
else{
	mensagem = string(global.pontos)
}

/*
Ao executar o jogo podemos perceber que a fonte usada é muito baixa
poderiamos usar a função draw_text_transformed(), o problema dela 
é que ao aumentar o texto,acaba ficanddo um texto "feio", no caso
fica muito pixelizado e com algumas cores faltando e também
não fica no centro, então no lugar de criaremos uma fonte própria para
os pontos, pois desta maneira,podemos controlar o tamanho
e qual fonte usar

Com a fonte criada, agora colocaremos para segui-lá
para isto usaremos a função draw_set_font()
***Alias,as funções que contém set no nome,são par,modificar o
a informação de algo, e a get por sua vez, para buscar o valor de algo
descrição:
function draw_set_font(font: Asset.GMFont) -> undefined
this function will set the font to be used for all futher text drawing.
font the name of the font to use

Tradução:
função draw_set_font(font: fonte criada)retorno vaziuo ou indefinido
esta função irá definir a font a ser usada por todos os textos desenhados
font o nome da fonte para usar

Para definir a centralização, usaremos as funções:
draw_set_halign():
function draw_set_halign(halign:Constant.Halign) ->
undefined
this function is use to align text along the horizontal axis
and changing the horizontal alignment will
change the position and direction in which all
further text is drawn with the default value being fa_left.
halign Horizontal alignment.

Tradução:
 Função draw_set_halign(halign: Constant. alinhamento horizontal)
 retorno vazio ou indefinido
 esta função é usada para alinhar o texto no eixo horizontal e mudar
 o alinhamento horizontal e irá mudar a posição e a direção de tudo e todos
 os textos desenhado, com o padão sendo iniciar pela esquerda(fa_left)
 halign Alimhamento Horizontal
 as posiveis variaveis são:
 fa_left: para esquerda
 fa_center:para o centro
 fa_right:para direita
 usaremos o fa_center
 
 
 draw_set_valign():
 fuction draw_set_valign(valign: Constant.Valign)-> undefined
 this function is used to align text along the vertical axis and
 changing the vertical alignment will chage the position and
 direction in which all further text is drawn, with the default
 value being fa_top.
 valign Vertical alignment.
 
 Função draw_set_valign(valign: Constante alinhamento vertical)
 retorno vazio ou indefinido
 esta função é usada para alinhar o texto no eixo vertical e mudar
 o alinhamento vertical e irá mudar a posição e direção em todos
 os textos desenhados, com o padrão sendo iniciar pelo topo
 valign Alinhamento vertical
 aqui as possiveis variaveis:
 fa_top:para o topo
 fa_middle: para o meio
 fa_bottom:para baixo
 no caso iremos usar a fa_top,então não necessáriamente teremos que
 utilizar esta função,mas já fica de ensinamento
*/
draw_set_font(fntPontos)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text(x, y, mensagem)