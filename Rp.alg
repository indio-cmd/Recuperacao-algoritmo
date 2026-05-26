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

  enquanto opcao <>  6 faca
    escreval("====================================")
    escreval("1  Registrar reservas")
    escreval("2  Cancelar reserva pelo nome")
    escreval("3  Buscar reserva pelo nome")
    escreval("4  Listar todas as reservas")
    escreval("5  Exibir total de reservas de ativa")
    escreval("6  Sair")
    escreval("Escolha uma opção")
    leia(opcao)


    enquanto opcao = 1  faca
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
          i<-10

        fimse
      fimpara
      se achou = falso entao
        escreval("Limite de reservas alcançado")
      fimse
    fimenquanto

    enquanto opcao = 2 faca
      escreval("Digite o nome da reserva")
      leia(Busca)
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

      enquanto opcao = 3 faca
        escreval("Digite o nome para busca:")
        leia(busca)
        achou <- falso
        para i de 1 ate 10 faca
          se nome[i] = busca entao
            escreval("=====Reserva=====")
            escreval("Cliente: ", nome[i])
            escreval("pessoas ", status[i])

            achou <- verdadeiro
          fimse
        fimpara
        se achou = falso entao
          escreval("Nenhuma reserta encontrada")
        fimse

        enquanto opcao = 4 faca
          escreval("======Todas as reservas======")
          para i de 1 ate 10 faca
            se nome[i] <> "" entao
              escreval("Nome ", nome[i])
              escreval("Pessoas ", pessoas[i])
              escreval("Data ", data[i])
              escreval("Status ", status[i])
            fimse
          fimpara
          enquanto opcao = 5 faca
            para i de 1 ate 10 faca
              se status[i] = "Ativa" entao
                total <- total +1
              fimse
            fimpara
            escreval("Total de reservas ativas ", total)

            enquanto opcao = 6 faca
              escreval("Saindo do sistema") 
            

      fimenquanto
    fimenquanto
  fimenquanto
fimenquanto
fimenquanto
fimenquanto
fimalgoritmo