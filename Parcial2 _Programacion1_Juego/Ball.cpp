#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <windows.h>
using namespace std; 
//variables constantes ; dimensiones del mesa 
#define H 75
#define V 21

void inicio(char mesa[V][H], int pelotaX, int pelotaY, int inijug, int finjug, int ini_maquina, int fin_maquina);
void borde (char mesa[V][H]);
void raqueta_jugador (char mesa[V][H], int inijug, int finjug);
void raqueta_maquina (char mesa[V][H], int ini_maquina, int fin_maquina);
void pelota (char mesa[V][H], int pelotax, int pelotaY);
void leer_mesa(char mesa[V][H]);
void game(char mesa[V][H],int pelotaX, int pelotaY,int inijug,int finjug,int ini_maquina,int fin_maquina,int modX,int modY,int mod_maquina);
void dibujar(char mesa[V][H]);
void verficar(char mesa[V][H], int *pelotaX, int *pelotaY, int *inijug, int *finjug, int *ini_maquina, int *fin_maquina, int *modX, int *modY, int *mod_maquina, int *gol);
void actualizar(char mesa[V][H], int pelotaX, int pelotaY, int inijug, int finjug, int ini_maquina, int fin_maquina);
int main(){
       
    //Paolo Rodriguez ,Delfina Ibañez 

    int pelotaX, pelotaY, inijug,finjug, ini_maquina, fin_maquina ;   
    int modX ,modY ,mod_maquina;
    char mesa[V][H];  

     
    //posicion 
    pelotaX = 37; pelotaY = 10; //pelotaota
    inijug = 8; finjug = 12; //jugador
    ini_maquina = 5; fin_maquina = 19; //maquina

    //modificacion 
    
 
    modX = -1; 
    modY = -1; 
    mod_maquina = -1;

    //funcion para imprimir el mesa ,raqueta ,pelotaota
   
    inicio(mesa,pelotaX,pelotaY,inijug,finjug,ini_maquina,fin_maquina);
    game(mesa, pelotaX, pelotaY, inijug, finjug, ini_maquina, fin_maquina, modX, modY, mod_maquina);

    
    system("pause");
    return 0;
}

void inicio(char mesa[V][H], int pelotaX, int pelotaY, int inijug, int finjug, int ini_maquina, int fin_maquina){
    
    borde (mesa);
    raqueta_jugador (mesa , inijug ,  finjug );
    raqueta_maquina (mesa, ini_maquina, fin_maquina);
    pelota (mesa, pelotaX, pelotaY);
}

//funcion para crear el mesa 
void borde (char mesa[V][H]){
 
 
 for (int i = 0; i < V; i++){
  
  for (int j = 0; j < H; j++){
   
   if (i == 0 || i == V-1 ){

    mesa [i][j] = '_';     //pintamos los horizontales 
   }

    
   else if (j == 0 || j == H-1 ){
    
    mesa [i][j] = '|';                //pintamos las verticales 
   }
 

   else{
    
    mesa [i][j] = ' '; //es los demas cuadros en blaco 
   }
  }
 }            
       
}

//crear la raqueta del jugador 
void raqueta_jugador (char mesa[V][H], int inijug, int finjug){
 
 for (int i = inijug; i <= finjug; i++){
  
  for (int j = 2; j <= 3; j++){
   
   mesa [i][j] = 'X';
  }
 }
}

//crear la raqueta de la maquina 
void raqueta_maquina (char mesa[V][H], int ini_maquina, int fin_maquina){
 
 for (int i = ini_maquina; i <= fin_maquina; i++){
  
  for (int j = H-4; j <= H-3; j++){
   
   mesa [i][j] = 'X';
  }
 }
}

//inicio de la pelota
void pelota (char mesa[V][H], int pelotaX, int pelotaY){
 
 mesa [pelotaY][pelotaX] = 'O';
}

//imprime la mesa 
void leer_mesa(char mesa[V][H]){

cout<<"***************       **************       ******               ******"<<endl;
cout<<"****************      ***************      ******               ******"<<endl;
cout<<"***       *******    ****        *****     ******               ******"<<endl;
cout<<"***       *******    ****        *****     ******               ******"<<endl;
cout<<"***      *******     ****        *****     ******               ******"<<endl;
cout<<"***************      ****        *****     ******               ******"<<endl;
cout<<"************* *      *****************     ******               ******"<<endl;
cout<<"***        *****     *****************     ******               ******"<<endl;
cout<<"***         *****    *****       *****     ******               ******"<<endl;
cout<<"***         *****    *****       *****     ******               ******"<<endl;
cout<<"***         ****     *****       *****     ****************     ******************"<<endl;
cout<<"***************      *****       *****     *****************    *******************"<<endl;
    
cout<<"ARRIBA (W)  ABAJO(S)"<<endl;
 for (int i = 0; i < V; i++){
  
  for (int j = 0; j < H; j++){
   cout<<mesa[i][j]; 
  }
  cout<<"\n";
 }

 
}


void game (char mesa[V][H], int pelotaX, int pelotaY, int inijug, int finjug, int ini_maquina, int fin_maquina, int modX, int modY, int mod_maquina){
    
 int gol;
 gol = 0;
 do{
  
  dibujar(mesa);  //dibujar
  verficar(mesa, &pelotaX, &pelotaY, &inijug, &finjug, &ini_maquina, &fin_maquina, &modX, &modY, &mod_maquina, &gol); //verificar y modificar las posiciones
  actualizar(mesa,pelotaX,pelotaY,inijug,finjug,ini_maquina,fin_maquina); //actualizar la matriz
  Sleep (1);//Permite hacer una pausa por una determinada cantidad de segundos en la ejecución de un programa.
 } while(gol == 0);
}

void dibujar(char mesa[V][H]){
 
 system("cls");
 system ("cls");
 leer_mesa(mesa);
}

void verficar(char mesa[V][H], int *pelotaX, int *pelotaY, int *inijug, int *finjug, int *ini_maquina, int *fin_maquina, int *modX, int *modY, int *mod_maquina, int *gol){
 
 char key ;
 //verificacion
 if (*pelotaY == 1 || *pelotaY == V-2){
  
  *modY *= -1;
 }
 
 if (*pelotaX == 1 || *pelotaX == H-2){
  
  *gol = 1;
 }  
 
 if (*pelotaX == 4){
  
  for (int i = *inijug; i <= *finjug; i++){
   
   if (i == (*pelotaY)){
    
    *modX *= -1;
   }
  }

 }
 
 if (*pelotaX == H-5){
  
  for (int i = *ini_maquina; i <= *fin_maquina; i++){
   
   if (i == (*pelotaY)){
    
    *modX *= -1;
   }
  }

 }

  if (*ini_maquina == 1 || *fin_maquina == V-1){
  
  *mod_maquina *= -1;

 }


    //Modificadores 
    if(*gol==0){
    //mover pelotaota 
    *pelotaX += (*modX); 
    *pelotaY += (*modY);


    //mover raqueta de la maquina

 *ini_maquina += (*mod_maquina);
  *fin_maquina += (*mod_maquina);
 } 
 
  if (kbhit() == 1){ //esta funcion sirve para que no tenga que esta tipieando para que funcione el juego , si le pusiera un 1 tendria que estar tipienda 
   
   key = getch(); //es igual que scanf pero sin pulsar intro
   
   if (key == 'w'){
    
    if (*inijug != 1){
     
     *inijug -= 1;
     *finjug -= 1;
    }
   }
   
   if (key == 's'){
    
    if (*finjug != V-1){
     
     *inijug += 1;
     *finjug += 1;
    }
   }
  }

}

//actualizar 
void actualizar(char mesa[V][H], int pelotaX, int pelotaY, int inijug, int finjug, int ini_maquina, int fin_maquina){
 
 borde (mesa);
 raqueta_jugador (mesa, inijug, finjug);
 raqueta_maquina (mesa, ini_maquina, fin_maquina);
 pelota (mesa, pelotaX, pelotaY);
}