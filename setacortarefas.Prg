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
 
// funcao que retorna a cor para colorir a linha da grade de tarefas
function setaCorTarefas(x)

	// define variavel de cor BRANCA
	aCor := { 255,255,255 }
	
	// verifica se existe produtos na grade
	if(getProperty("sequencia","grid_tarefas","itemcount")>0)
		
		// captura o nivel de alerta
		cNivel := getProperty("sequencia","grid_tarefas","item",x)[5]
		
		// seleciona a cor apropriada para o tipo de alerta
		do case
		case cNivel == pcBRANCO
			aCor := { 255, 255, 255 }
		case cNivel == pcAMARELO
			aCor := { 255, 255, 0 }
		case cNivel == pcVERMELHO
			aCor := { 255, 0, 0 }
		case cNivel == pcENTREGUE
			aCor := { 0, 255, 0 }
		endcase
	
	endif
	
	// retorna a variavel da cor
return aCor
