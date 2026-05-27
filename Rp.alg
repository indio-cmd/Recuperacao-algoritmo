algoritmo "Primeiro Programa"

var
  nome:vetor[1..10] de caractere
  pessoas:vetor[1..10 ] de inteiro
  data:vetor[1..10] de caractere
  status:vetor[1..10] de caractere
  opcao:inteiro
  achou:logico
  i:inteiro
  total:inteiro
  busca:caractere

inicio

  opcao <- 0
  total <- 0

  enquanto opcao <> 6 faca

    escreval("====================================")
    escreval("1  Registrar reservas")
    escreval("2  Cancelar reserva pelo nome")
    escreval("3  Buscar reserva pelo nome")
    escreval("4  Listar todas as reservas")
    escreval("5  Exibir total de reservas de ativa")
    escreval("6  Sair")
    escreval("Escolha uma opção")
    leia(opcao)

    se opcao = 1 entao

      achou <- falso

      para i de 1 ate 10 faca

        se nome[i] = "" entao

          escreval("Nome do cliente:")
          leia(nome[i])

          escreval("Quantidade de pessoas:")
          leia(pessoas[i])

          escreval("Data da reserva:")
          leia(data[i])

          status[i] <- "Ativa"

          escreval("Reserva feita")

          achou <- verdadeiro

          i <- 10

        fimse

      fimpara

      se achou = falso entao
        escreval("Limite de reservas alcançado")
      fimse

    fimse


    se opcao = 2 entao

      escreval("Digite o nome da reserva")
      leia(busca)

      achou <- falso

      para i de 1 ate 10 faca

        se nome[i] = busca entao

          status[i] <- "Cancelada"

          escreval("Reserva cancelada")

          achou <- verdadeiro

        fimse

      fimpara

      se achou = falso entao
        escreval("Reserva nao encontrada")
      fimse

    fimse


    se opcao = 3 entao

      escreval("Digite o nome para busca:")
      leia(busca)

      achou <- falso

      para i de 1 ate 10 faca

        se nome[i] = busca entao

          escreval("=====Reserva=====")
          escreval("Cliente: ", nome[i])
          escreval("pessoas ", pessoas[i])
          escreval("Data ", data[i])
          escreval("Status ", status[i])

          achou <- verdadeiro

        fimse

      fimpara

      se achou = falso entao
        escreval("Nenhuma reserta encontrada")
      fimse

    fimse


    se opcao = 4 entao

      escreval("======Todas as reservas======")

      para i de 1 ate 10 faca

        se nome[i] <> "" entao

          escreval("Nome ", nome[i])
          escreval("Pessoas ", pessoas[i])
          escreval("Data ", data[i])
          escreval("Status ", status[i])

        fimse

      fimpara

    fimse


    se opcao = 5 entao

      total <- 0

      para i de 1 ate 10 faca

        se status[i] = "Ativa" entao

          total <- total + 1

        fimse

      fimpara

      escreval("Total de reservas ativas ", total)

    fimse


    se opcao = 6 entao

      escreval("Saindo do sistema")

    fimse

  fimenquanto

fimalgoritmo