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

function atualiza_alertas()

	// verifica se pode atualizar rotina
	if( pnTime <= 0 )
		
		// se nao estiver executando, executa
		if(pbExecuta)
		
			// seta com falso, para nao permitir outra execucao simultanea
			pbExecuta := .f.
					
			// verifica se existem itens no array
			if(len(paTarefas)>0)
										
				// zera as variaveis de contagem de tarefas
				pnItensBrancos := 0
				pnItensAmarelos := 0
				pnItensVermelhos := 0

				// gira o loop a quantidade de mesas que foram definidas para mudar alerta se necessario
				for a := 1 to len(paTarefas)
						
					// captura o nivel atual do alerta
					cNivel := paTarefas[a][5]
								
					// verifica se o nivel de alerta nao for do tipo ENTREGUE
					if( cNivel != pcENTREGUE )
								
						// captura o segundo do pedido
						nPedidoTime := timetosec(paTarefas[a][4])
						
						// calcula os segundos que ja se passaram da hora do pedido ate o momento
						nPedidoAgora := timetosec(time()) - nPedidoTime
																		
						// se maior que n segundos e menor que z segundos, fica amarelo
						if( (nPedidoAgora>nAmareloInicio) .and. (nPedidoAgora<nVermelhoInicio) )
							
							// se o nivel nao for AMARELO
							if(cNivel != pcAMARELO)
							
								// muda para amarelo
								cNivel := pcAMARELO
								
								// seta a variavel para atualizar a tela
								pbMuda := .t.
								
							endif
							
						endif
										
						// se maior que n segundos, fica vermelho
						if( nPedidoAgora>nVermelhoInicio )
						
							// se o nivel nao for VERMELHO
							if(cNivel != pcVERMELHO)
							
								// muda para vermelho
								cNivel := pcVERMELHO
								
								// seta a variavel para atualizar a tela
								pbMuda := .t.
								
							endif
							
						endif
						
						// atualiza o nivel do alerta no vetor de tarefas
						paTarefas[a][5] := cNivel

					endif
										
					// faze contagem de tarefas em cada nivel
					if(cNivel==pcBRANCO)
						pnItensBrancos++
					elseif(cNivel==pcAMARELO)
						pnItensAmarelos++
					elseif(cNivel==pcVERMELHO)
						pnItensVermelhos++
					endif
									
											
				next

			endif
			
			// recomeca a contagem de atualizacao padrao
			pnTime := 100
			
			// seta a variavel de execucao para autorizar esse trecho de codigo novamente
			pbExecuta := .t.
			
			
		endif

	endif
	
return nil