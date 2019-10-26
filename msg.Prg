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

function msg( cTexto )

	// envia a texto para o componente da lista de mensagem
	domethod("main","list_msg","additem",ctexto)
	
	// posiciona na ultima mensagem mostrada na tela
	setproperty("main","list_msg","value", getproperty("main","list_msg","itemcount") )

return nil