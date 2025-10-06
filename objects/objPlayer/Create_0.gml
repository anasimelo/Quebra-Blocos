	//Duas barras para comentar em linha
	/*
	barra ,asterisco,asterisco, barra para comentar em bloco
	*/

	/*
	vamos por uma variavel para a velocidade do nosso ´player
	Ela vai se chamar velocidade e vai receber o valor de 3
	Pois quero que o player ande 3 pixes por clique
	*/

	velocidade = 4.5

	/*
	Mas agora eu quero criar uma variavel que armazene- 
	-a quantidade de pontos e vida
	Os problemas são que: 1 eu quero que esta variavel,- 
	-seja acessivel para todos os objetos-
	-(Para mostrar a quantidade de vidas e pontos)
	Para isso usaremos o objeto global
	só que se criarmos a variavel do mesmo jeito que a
	-variavel velocidade 
	Toda vez que o objeto -Player for criado 
	ele vai substituir o valor que estava anteriormente
	Exemplo: caso a quantidade de vida atual -
	- for 1 e recriarmos o player a quantidade vai para 3
	para isto teremos que usar a função que verifica -
	- a existencia de uma variavel global
	Então usaremos a finção variable_global_exists()
	mas vamos ver a descrição dela
	para vermos as descrições das variaveis é só deixar -
	- o mouse encima da função
	descrição da função:
	function variable_global_exists(name : String) -> Bool
	whith this function you can check whether -
	 - a global scope variable exists or not.
	 name the name of the global variable to chack -
	 for (as a string)
 
	 Tradução
	 a função variable_global_exists(nome da variavel -
	 - unico parametro: valor do tipo de string) -
	 retorno booleano(true ou false)
	 com esta função você consegue checar se a variavel -
	  - global existe no escorpo ou não
	  nome: representa o nome da variavel a qual você 
	  - deseja checar (como um texto)
  
	  Mas, só queremos checar se ela não existe
	 E como vamos usar a função if, ela apenas funciona
	 se a condição ou o valor for verdadeira
	 Como o retorno que queremos da função é o false
	 Teremos que usar algo que mude false para true  -
	  e vice-versa
	 Como podemos fazer isto? è só colocar um sinal de !
	 Antes do valor/condição, então como que ficaria -
	 -  a estrura do if?
	*/
if ! variable_global_exists("vidas"){
		//É agora criamos a variavel
		global.vidas = 3
}

	//Vamos fazer a mesma coisa para a quantidade de pontos
if ! variable_global_exists("pontos"){
		global.pontos = 0
}

	/*
	Lembrando que este só ira funcionar quando uma -
	 -  nova instancia for criada
	 */