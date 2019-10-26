#include <hmg.ch>
/*************************************************************************************************************************
 * Sequencia de tarefas a serem realizadas
 * Desenvolvido por Ceu Azul Tecnologia
 * Programador responsavel Crocciari Daniel
 * Cedido para HMGLights
 * OpenSource/Freeware
 * 2019 
 *************************************************************************************************************************
 */

function atualiza_tela()

	// verifica se a variavel de atualizar a tela esteja verdadeira
	if pbMuda 
	
		// seta a variavel de execucao para falso, para impedir de rodar o modulo de alerta
		pbExecuta := .f.
		
		// mostra time na tela, com "<<" para diferenciar o momento que atualiza a tela de tarefas
		setproperty("sequencia","label_time","value",time() + "<<")	
				
		// limpa o componente grid
		doMethod("sequencia","Grid_tarefas","deleteallitems")

		// remove produtos ja entregues
		for a := 1 to len(paTarefas)
		
			// verfica se o nivel de alerta esta em entregue
			if(paTarefas[a][5]==pcENTREGUE)
			
				// remove o elemento entregue da lista de tarefas
				hb_ADel(paTarefas, a, .t.)
				
			endif
			
		next
					
		// roda o vetor de tarefas
		for a := 1 to len(paTarefas)
		
			// insere o produto no componente grid
			doMethod("sequencia","Grid_tarefas", "additem", paTarefas[a] )	
			
		next
						
		// modifica indicador de pedidos
		setProperty("sequencia","label_branco","value",alltrim(str(pnItensBrancos)))
		setProperty("sequencia","label_amarelo","value",alltrim(str(pnItensAmarelos)))
		setProperty("sequencia","label_vermelho","value",alltrim(str(pnItensVermelhos)))
			
		// liberra a execucao da rotina de atualizar alertas
		pbExecuta := .t.
	
		// seta a atualizacao da tela
		pbMuda := .f.	

	else
	
		// apenas mostra o tempo na tela
		setproperty("sequencia","label_time","value",time())	
			
	endif
	
return nil

