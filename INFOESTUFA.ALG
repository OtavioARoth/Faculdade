algoritmo "InfoEstufa"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
// Fun��o : Implementar algoritmos para as principais funcionalidades do sistema proposto
// Autor : Otavio  Augusto Roth
// Data : 25/09/2020
// Se��o de Declara��es
var
codigo: Inteiro
 nome,email,endereco,relato:caractere
inicio
// nome do software
escreval (" =====================================================")
escreval (" |                                                   |")
escreval (" |                  Info Estufa                      |")
escreval (" |                                                   |")
escreval ("======================================================")
// A ideia � registrar as informa��es para entrar em contato futuramente

        escreval ("Por favor digite seu  nome ")
        leia (nome)
            escreval ("Por favor digite seu email")
                leia(email)
                escreval
                escreval ("Seu email ser� armazenado em nosso banco de dados,")
                escreval ("caso novidades sobre as solu��es apare�am iremos ")
                escreval ("informar")
                escreval
                Escreval (nome,", Por favor selecione umas das op��es abaixo")
                escreval("a qual voc� gostaria de saber sobre solu��es para")
                escreval ("o efeito estufa")
   // Utiliza-se de la�o de repeti��o para acessar todas as op��es do programa
repita
      escreval
    escreval ("Quer receber email sobre atualidades do efeito estufa digite 1 ")
    escreval
    escreval ("Quer relatar algum incidente na sua regi�o ( foco de inc�ndio,")
    escreval ("desmatamento,foco de doen�as), digite 2." )
    escreval
    escreval  ("Se quiser sair do software digite 3")

    escreval ("Insira o c�digo")
         leia(codigo)
      escreval

    // Aqui utilizamos a fun��o escolha para selecionar nossas op��es
escolha  codigo
         Caso 1
       escreval("Voc� receber� no email ",email," a partir de agora noticias sobre as principais")
       escreval ("causas do efeito estufa, assim como dicas para reduzir os mesmos")
        escreval

                 Caso 2
                 escreval (" Por favor digite o endere�o de sua denuncia/relato")
                 Leia (endereco)
                 escreval (" Agora por favor relate seu problema")
                 leia (relato)
                 escreval (" Seu problema sera relatado a central, para verifica��o,")
                 escreval (" caso seja verdadeira vamos contatar os responsaveis")
                 escreval ("para o endere�o: ",endereco)

                        caso 3
                        escreval ("Obrigado por usar o Info Estufa")
                                         OutroCaso
                                         escreval ("Op��o invalida")

fimescolha

  limpatela
ate codigo=(3)

 // Ir� se repetir at� voc� digitar o numero 3 para sair

 FimAlgoritmo