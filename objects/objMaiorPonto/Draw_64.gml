//analiza para ver se a pontuação atual é maior
//se for verdadeiro,armazenamoso valor

if global.pontos> global.maiorPontuacao{
	maiorPontuacao = global.pontos
}

if global.pontos < 10{
	mensagem = "0000" + string(global.maiorPontuacao)
}
else if global.pontos < 100{
	mensagem = "000" + string(global.maiorPontuacao)
}
else if global.pontos < 1000{
	mensagem = "00" + string(global.maiorPontuacao)
}
else if global.pontos < 10000{
	mensagem = "0" + string(global.maiorPontuacao)
}
else{
	mensagem = string(global.maiorPontuacao)
}

//cria a mensagem da maior pontuação
mensagemMaiorPontos = "Maior pontuacao: " + mensagem

draw_set_font(fntPontos)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text(x, y, mensagemMaiorPontos)