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

// funcao que retorna a cor para "colorir zebrado" a grade de produtos
function setaCorZebra(x)

	// a variavel x traz a linha da grade
	// com o calculo de par ou impar, seta a cor da linha
	IF x/2==INT(x/2)
		aCor := { 234,244,255 }
	ELSE
		aCor := { 255,255,255 }
	ENDIF

	// retorna a variavel cor
return aCor