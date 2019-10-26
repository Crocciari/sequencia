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


Function sequencia_timer_sequencia_action

	// decrementa variavel para atualizacoes
	pnTime--
	
	// aciona funcao de atualizar alertas
	atualiza_alertas()
	
	// aciona funcao de atualizar tela
	atualiza_tela()
	
Return Nil
