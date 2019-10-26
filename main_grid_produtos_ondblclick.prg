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

Function main_grid_produtos_ondblclick

	// muda o foco para campo de quantidade
	domethod("main","text_qtde","setfocus")

Return Nil
