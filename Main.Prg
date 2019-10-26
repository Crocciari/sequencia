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

Function Main  

	// define as cores zebras da grid de produtos
	PRIVATE bBColorProduto:= { || setaCorZebra(THIS.CELLROWINDEX) }
	
	// defube as cores de alerta na grid de tarefas
	PRIVATE bFColorTarefa := { || setaCorTarefas(THIS.CELLROWINDEX) }

	
	//
	// 1 segundo  = 1 segundo
	// 1 minuto   =           60 segundos
	// 10 minutos = 60 * 10 = 600 segundos
	// 15 minutos = 60 * 15 = 900 segundos
	// 30 minutos = 60 * 30 = 1800 segundos
	// 1 hora     = 60 * 60 = 3600 segundos
	// define o tempo de alertas mudarem de cor
	//
	nAmareloInicio = 30 // segundos
	nVermelhoInicio = 60 // segundos		
	
	// define o numero de mesas
	public pnMesas := 10
	
	// define vetor de produtos
	public paProdutos := {}
	
	// inclui produtos na lista
	inclui_produtos()
	
	// definicoes para alertas (nao modificar)
	public pcBRANCO := "1"
	public pcAMARELO := "2"
	public pcVERMELHO := "3"
	public pcENTREGUE := "9"
	
	// define o vetor para tarefas a serem realizadas
	public paTarefas := {}
		
	// define tempo de atualizacao de tela
	public pnTime := 100
	
	// define contadores publicos para as tarefas
	public pnItensBrancos := 0
	public pnItensAmarelos := 0
	public pnItensVermelhos := 0
		
	// essa variavel quando setada com .t. atualiza a tela, evita de ficar piscando e perdendo o foco 
	public pbMuda := .f.
	public pbExecuta := .t.

    Load Window Main
    Main.Activate

Return

