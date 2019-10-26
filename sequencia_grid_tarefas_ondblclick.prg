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

declare window sequencia

Function sequencia_grid_tarefas_ondblclick
local nTarefa, aTarefa, bOps

	// verifica se existe tarefas na lista
	if(len(paTarefas))>0
	
		// caputra a posicao do click na grade
		nTarefa := getProperty("sequencia","grid_tarefas","value")
		
		// se posicao for menor e maior que zero (clique nao pode ser na area vazia)
		if(nTarefa<=len(paTarefas) .and. nTarefa>0)
		
			// mostra a mensagem na lista de mensagems avisando que produto foi entregue
			msg( paTarefas[nTarefa,3] + " x " + paTarefas[nTarefa,2] + " ENTREGUE")
		
			// muda o nivel para condicao entregue
			paTarefas[nTarefa][5] := pcENTREGUE
			
			// seta variavel para atualizar a tela
			pbMuda := .t.
				
			
		endif
			
	endif

Return Nil
