if global.isFimJogo{
	exit
}
//Região da criação dos blocos
#region criar blocos
	//aqui usaremos assim que a quantidade deles for 0
	if global.quantBlocos == 0{
		//começaremos a cria-los,usando laço de repetição
		//por enqunto, vamos criar apenas uma linha
		i = 0
		while i < 4 {
		/*criaremos um bloco do lado do outro no caso cada um
		tera 64 blocos de distancia, para calcular começaremos
		do 64,e acaba o bloco criador,multiplicaremos por i afinal
		ele começa do 1 até a quantidade , ou seja, esse sera o 
		valor x enquanto ao y,começaremos do 0
		e no final da while, enquanto não houver um bloco
		aonde queremos que seja o inicio aumentaremos o valor de y
		resultando no bloco abaixando automaticamente*/
		
		//Criando a variavel j
		j = 1
		
		while j <= 9 {
			instance_create_layer(64 * j, - 64 * i,"Instances", objBloco)
			j++
		}
		j--
		
		//quando criar aumenta o valor de i e define a quantidade de blocos
		/*criamos por linha,agora criaremos por coluna,usaremos a mesma lógica
		a diferença é que usaremos mais um laço e tambem ao invés 
		de positivos,deixamos negativo
		e usaremos uma mova variavel , o j
		então toda vez que chegarmos no total de linhas sairemos do laço
		para entrar no de colunas*/
		i++
		}
		global.quantBlocos = i * j
	
	}
	
	//Assim que terminar vamos descer todos os blocos até um chegar na posição que queremos
#endregion
