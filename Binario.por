programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro lista[11], chave, i, j, menor, resultado // Variáveis

		para (i = 0; i < 10; i++) // Sorteio dos números da lista
		{
			lista[i] = u.sorteia(1, 50)
		}
		
		para (j = 0; j < 10; j++) // Laço para ordenar a lista em ordem crescente
		{
			para (i = 0; i < 10; i++)
			{
				se (lista[i] > lista[i+1])
				{
					menor = lista[i]
					lista[i] = lista[i+1]
					lista[i+1] = menor
				}
			}
		}

		para (i = 1; i < 11; i++) // Escrever a lista
		{
			escreva("| ", lista[i], " |")
		}

		escreva("\n\nQual o valor da chave? (Digite 0 para aleatória)\n")
		leia(chave)

		limpa()
		se (chave == 0) // Caso a chave seja 0, sorteará um número aleatória da lista
		{
			chave = u.sorteia(1, 10)
			chave = lista[chave]
		}

		para (i = 1; i < 11; i++) // Reescrever a lista
		{
			escreva("| ", lista[i], " |")
		}

		escreva("\n\nchave: ",chave, "\n\n") // Escrever a chave

		resultado = buscaBinaria(lista, 10, chave)

		se (resultado == -1)
		{
			escreva("Chave não encontrada na lista\n") // Escreve caso a chave não esteja entre a lista
		}
			senao
			{
				escreva("Chave encontrada na posição: ", resultado, "\n") // Mostra qual a posição da chave, caso ela esteja na lista
			}
	}

	funcao inteiro buscaBinaria(inteiro lista[], inteiro tamanho, inteiro chave)
	{
		inteiro primeiro, ultimo, meio, j = 1 // Variáveis 
   
		primeiro = 1
		ultimo = tamanho - 1

		enquanto (primeiro <= ultimo) // Laço de repetição até achar a chave, ou a lista acabar
		{
			meio = (primeiro + ultimo) / 2

			para (inteiro i = primeiro; i <= ultimo; i++) // Laço de repetição para escrever a lista já na metade
			{
				escreva("|",lista[i], "| ")
			}
				escreva("\n")

			se (lista[meio] == chave) // Se a chave for o número do meio acaba e já retorna
			{
				retorne meio
			}
				senao se (lista[meio] < chave) // Se a chave for menor, escolhe o novo meio dentro os menores
				{
					primeiro = meio + 1
				}
					senao
					{
						ultimo = meio - 1 // Se a chave for maior, escolhe o novo meio dentro os maiores
					}
			j++
		}

		retorne -1 // para retornar se a Chave foi ou não(Caso retorne -1) encontrada
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2156; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */