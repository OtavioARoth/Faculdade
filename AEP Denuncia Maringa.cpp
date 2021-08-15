#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <locale.h>

	char nome[40];
	char email[40];
	char endereco[40];
	char denuncia[150];
	char CPF[11];
	char opcao;
	char c;
		FILE *arq;
	
	char url[] = "denuncias.txt"; /*Declarando arquivo para den�ncias*/

		Cadastro(void) { //Menu  de cadastro
	
 			printf("\nDigite seu nome: \n");
 				fflush(stdin);
 				scanf("%[^\n]", &nome);
			printf("\nDigite seu CPF: \n");
				fflush(stdin);
				scanf("%[^\n]", &CPF);
			printf("\nDigite seu e-mail: \n");
				fflush(stdin);
				scanf("%[^\n]", &email);
				
			system("cls || clear"); /*Sempre ap�s a execu��o vai ser limpo a tela e mostraram novamente o menu*/
		} 
						
		Denuncias(void) {
 								
		arq = fopen(url,"w");
			
			if (arq==NULL) {
				printf("Erro, n�o foi possivel abrir o arquivo.");
			}
			
			printf("Escreva sua den�ncia: \n"); // Relate sua den�ncia de forma simplicada, ser� salvo em um arquivo txt.
				fflush(stdin);
				gets(denuncia);
				fputs(denuncia, arq);
				fclose(arq);
				
		
		}	

		Perfil(void) { /*Aqui voc� visualiza seu perfil conforme cadastrado*/
	
			printf("\nNome: %s\n", nome);
			printf("\nCPF: %s\n", CPF);
			printf("\nE-mail: %s\n", email);
		}

		DenunciasRealizadas(void) { /*Lista a sua den�ncia feita, inicialmente usa-se apenas um arquivo*/
 
  		arq = fopen("denuncias.txt", "rt");
   
   			if(arq==NULL)
     			printf("Erro na abertura do arquivo");	
    		else {
    			printf("denuncias realizadas\n ");
				while(fgets(denuncia, 200, arq) != NULL) {      /* abre o arquivo e l� at� o limite de 200 caracteres */
     				printf("%s", denuncia);                 /* imprime o caracter lido */
   					
	 			
				}
			}
		}
		
	main(void) {
  	
		setlocale(LC_ALL, "Portuguese");
		
		do {
		
  			int opcao; /*Menus principal*/
  			
  				printf("\n");
  				printf(" ========================\n");
  				printf("|   Denuncia Maring�     |\n");
  				printf(" ========================\n");
				printf("|1 - Cadastrar perfil\t |\n");
				printf("|2 - Perfil \t\t |\n");
				printf("|3 - Fazer den�ncia\t |\n");
				printf("|4 - Verificar den�ncia\t |\n");
				printf("|5 - Excluir den�ncia \t |\n");
				printf("|6 - Sair \t\t |\n");
				printf(" ========================\n");
					scanf("%d", &opcao);
		
				switch (opcao) {
    			
					case 1: /*Cadastro do seus dados*/
						Cadastro();
                	break;

                	case 2: /*Exibe perfil cadastrado*/
						Perfil();
					break;
		          
    				case 3: /*Menu de den�ncias, registra em texto a sua den�ncia e salva um arquivo*/
      					Denuncias();
					break;
          
    				case 4: /*Listar as den�ncias*/ 
        				DenunciasRealizadas();
        				break;
					break;			
     				case 5: /*Deleta seu arquivo de den�ncia*/
     					remove("denuncias.txt");
					break;
				
	 				case 6: /*Sai do programa*/
	 					exit(1);
	     		
     			}
		}
			
		while(opcao != 6);
			
			system("pause");
	
}
