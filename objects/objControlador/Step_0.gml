//caso a vida chegue a zero, encerra o jogo e mostra a tela de fim;

if global.vidas <= 0{
	global.isFimJogo = true
	
	/*
	queremos mostrar a tela de fim de jogo, mas como faremos isso?
	para isso usa a função layer_set_visible()
	descrição:
	function  layer_set_visible(layer_id: String OR Id. Layer,visible: Bool) -> undefined
	with this function you can toggle the visibility of a layer.
	layer_id the unique id value of the layer to target (or the layer name as a string)
	visible whether the layer should be visible (true) or not (false)
	
	tradução:
	Função  layer_set_visible(layer_id: nome em texto ou o id da layer, visible: valor booleano) retorno
	indefinido ou vazio
	com esta função, você consegue trocar a visibilidade de uma layer
	layer_id:o unico valor de id da layer alvo(ou o nome da layer como uma string(texto))
	visible: se a layer vai ser mostrada(true) ou não(false)
	
	ou seja, quando quisermos mostrar a tela, ela iniciará no true, e depois quando reiniciarmos o jogo
	ela ficará no false
	*/
	
	 layer_set_visible("telademorte", true)
	  layer_set_visible("telaMorteFundo", true)
	  
	  /*
	  testamos e funcionou, mas o player ainda pode jogar, para evitar ,vamos bloquear
	  usando o exit,toda vez que o isFimJogo for verdadeiro
	  */
}