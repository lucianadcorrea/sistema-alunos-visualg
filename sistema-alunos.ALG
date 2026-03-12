algoritmo "SistemaAlunos"

var
   nomes: vetor[1..50] de caractere
   notas: vetor[1..50] de real
   i, total, opcao: inteiro
   soma, media: real
   busca: caractere
   encontrado: logico

inicio

total <- 0

repita
   escreval("")
   escreval("===== SISTEMA DE ALUNOS =====")
   escreval("1 - Cadastrar aluno")
   escreval("2 - Listar alunos")
   escreval("3 - Media da turma")
   escreval("4 - Alunos aprovados")
   escreval("5 - Buscar aluno")
   escreval("6 - Sair")
   escreval("")

   leia(opcao)

   escolha opcao

      caso 1
         se total < 50 entao
            total <- total + 1

            escreva("Nome do aluno: ")
            leia(nomes[total])

            escreva("Nota do aluno: ")
            leia(notas[total])
         senao
            escreval("Limite de alunos atingido")
         fimse

      caso 2
         para i de 1 ate total faca
            escreval(nomes[i], " - ", notas[i])
         fimpara

      caso 3
         soma <- 0

         para i de 1 ate total faca
            soma <- soma + notas[i]
         fimpara

         se total > 0 entao
            media <- soma / total
            escreval("Media da turma: ", media)
         senao
            escreval("Nenhum aluno cadastrado")
         fimse

      caso 4
         escreval("Alunos aprovados:")

         para i de 1 ate total faca
            se notas[i] >= 7 entao
               escreval(nomes[i], " - ", notas[i])
            fimse
         fimpara

      caso 5
         escreva("Digite o nome para buscar: ")
         leia(busca)

         encontrado <- falso

         para i de 1 ate total faca
            se nomes[i] = busca entao
               escreval("Aluno encontrado: ", nomes[i], " Nota: ", notas[i])
               encontrado <- verdadeiro
            fimse
         fimpara

         se encontrado = falso entao
            escreval("Aluno nao encontrado")
         fimse

   fimescolha

ate opcao = 6

fimalgoritmo
