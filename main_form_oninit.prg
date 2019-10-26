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

Function main_form_oninit


	// limpa o componente grid
	doMethod("main","Grid_produtos","deleteallitems")
	
	// gira o loop a quantidade de mesas que foram definidas
	for a := 1 to len(paProdutos)
	
		// insere o produto no componente grid
		doMethod("main","Grid_produtos", "additem", paProdutos[a] )	
	
	next
	
	// posiciona no primeiro item
	setProperty("main","Grid_produtos","value",1)



	// limpa o componente combo
	doMethod("main","combo_mesas","deleteallitems")
	
	// gira o loop a quantidade de mesas que foram definidas
	for a := 1 to pnMesas
	
		// insere a mesa no componente combo
		doMethod("main","combo_mesas", "additem", "Mesa " + alltrim(str(a)) )	
	
	next
	
	// posiciona na primeira mesas do combo
	setProperty("main","combo_mesas","value",1)
	
	// carrega a janela sequencia
	Load Window sequencia
	
	// ativa a janela sequencia
	sequencia.Activate

Return Nil
