#include "hmg.ch"
/*************************************************************************************************************************
 * Sequencia de tarefas a serem realizadas
 * Desenvolvido por Ceu Azul Tecnologia
 * Programador responsavel Crocciari Daniel
 * Cedido para HMGLights
 * OpenSource/Freeware
 * 2019 
 *************************************************************************************************************************
 */

declare window Main

// faz o pedido de um item na lista de tarefas
Function main_button_pedir_action

	// captura o produto selecionado na grid de produtos
	nProduto := getProperty("main","grid_produtos","value")

	// captura o nome do produto que esta selecionado na grid
	cProduto := getProperty("main","grid_produtos","item",nProduto)[2]
	
	// captura a quantidade vendida
	nQtde := getProperty("main","text_qtde","value")
	
	// captura o numero da mesa que pediu
	nMesa := getProperty("main","combo_mesas","value")
	
	// monta um array com todos os elementos da venda
	aTarefa := { strzero(nMesa,3), alltrim(str(nQtde)), cProduto, time(), pcBRANCO }
	
	// inclui a tarefa na lista de tarefa
	aadd( paTarefas, aTarefa )
	
	// mostra na lista de mensagens que foi feito um pedido
	msg(alltrim(str(nQtde)) + " x " + cProduto + " PEDIDO")
	
	// seta para atualizar a tela
	pbMuda := .t.
	
Return Nil
