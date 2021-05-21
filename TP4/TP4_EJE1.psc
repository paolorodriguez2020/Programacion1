Algoritmo TP4_EJE1
	//1. Desarrollar un algoritmo que permita almacenar en un arreglo los cien
	//	primeros números pares.
	//	Luego recorrer el arreglo y mostrar los números que contiene el arreglo.

	
	//definicion de variables 
	Definir i,vector,cont ,tamanio Como Entero
	// Inicializar variables
	cont=0
	tamanio=200
	
	
	Dimension vector[tamanio]
	//ciclo para buscar  y guardar los 100 primeros numeros pares 
	para i=0 hasta tamanio-1 con paso 1 Hacer
		si(i%2==0) //calculo si su resto es 0 
			vector[cont]=i // Asigno al arreglo, el #par  encontrado 
			cont=cont+1  // Incremento el indice del arreglo
		FinSi
	FinPara
	
	//Finalmente se deberá recorrer el arreglo, mostrar los números pares encontrados
	para i=0 hasta cont-1 con paso 1 Hacer
		Escribir , vector[i]
		Escribir ""
	FinPara
	

	
FinAlgoritmo
