algoritmo "InfoEstufa"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Função : Implementar algoritmos para as principais funcionalidades do sistema proposto
// Autor : Otavio  Augusto Roth
// Data : 25/09/2020
// Seção de Declarações
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
// A ideia é registrar as informações para entrar em contato futuramente

        escreval ("Por favor digite seu  nome ")
        leia (nome)
            escreval ("Por favor digite seu email")
                leia(email)
                escreval
                escreval ("Seu email será armazenado em nosso banco de dados,")
                escreval ("caso novidades sobre as soluções apareçam iremos ")
                escreval ("informar")
                escreval
                Escreval (nome,", Por favor selecione umas das opções abaixo")
                escreval("a qual você gostaria de saber sobre soluções para")
                escreval ("o efeito estufa")
   // Utiliza-se de laço de repetição para acessar todas as opções do programa
repita
      escreval
    escreval ("Quer receber email sobre atualidades do efeito estufa digite 1 ")
    escreval
    escreval ("Quer relatar algum incidente na sua região ( foco de incêndio,")
    escreval ("desmatamento,foco de doenças), digite 2." )
    escreval
    escreval  ("Se quiser sair do software digite 3")

    escreval ("Insira o código")
         leia(codigo)
      escreval

    // Aqui utilizamos a função escolha para selecionar nossas opções
escolha  codigo
         Caso 1
       escreval("Você receberá no email ",email," a partir de agora noticias sobre as principais")
       escreval ("causas do efeito estufa, assim como dicas para reduzir os mesmos")
        escreval

                 Caso 2
                 escreval (" Por favor digite o endereço de sua denuncia/relato")
                 Leia (endereco)
                 escreval (" Agora por favor relate seu problema")
                 leia (relato)
                 escreval (" Seu problema sera relatado a central, para verificação,")
                 escreval (" caso seja verdadeira vamos contatar os responsaveis")
                 escreval ("para o endereço: ",endereco)

                        caso 3
                        escreval ("Obrigado por usar o Info Estufa")
                                         OutroCaso
                                         escreval ("Opção invalida")

fimescolha

  limpatela
ate codigo=(3)

 // Irá se repetir até você digitar o numero 3 para sair

 FimAlgoritmo