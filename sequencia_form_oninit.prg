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

Function sequencia_form_oninit

	// limpa o componente grid
	doMethod("sequencia","Grid_tarefas","deleteallitems")

Return Nil
