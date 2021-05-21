
	Proceso TP4_EJ3
		//3.Desarrollar un algoritmo que permita obtener los números primos del rango de valores del 1 al 100. 
		//Cuando encuentre un número primo, lo deberá almacenar en un arreglo.
		
		// Definir variables
		Definir tamanio_arreglo, indice_primos, contador_primos Como Entero
		
		tamanio_arreglo = 26
		Dimension arreglo_primos[tamanio_arreglo]
		
		// Inicializar variables
		indice_primos = 0;
		
		// Calculo los numeros primos en un rango de 0 a 100
		Para i <- 1 Hasta 100 Con Paso 1 Hacer // Este para simula que un usuario va ingresando de forma manual, 1, 2, 3, ... para saber si es o no primo. Si es primo lo ingreso en el array        
			contador_primos = 0; // Variable que permite saber cuantas veces puede ser dividido el numero iterado (i)
			
			// Recorremos un bucle con todas las posibilidades desde 1 hasta i
			Para k <- 1 hasta i Con Paso 1 Hacer
				
				// Calculo cuantas veces es divisible
				Si i MOD k = 0 Entonces
					contador_primos = contador_primos + 1;
				FinSi
			FinPara
			
			
			// Si contadorDivisible sumo 2, el número es primo
			Si contador_primos == 2 O i = 1 Entonces            
				arreglo_primos[indice_primos] <- i;    // Asigno al arreglo, el #primo encontrado        
				indice_primos = indice_primos + 1; // Incremento el indice del arreglo
			FinSi
			
		FinPara
		
		
		//Finalmente se deberá recorrer el arreglo, mostrar los números primos encontrados y 
		//en qué posición del arreglo se encuentran.
		Para k <- 0 Hasta tamanio_arreglo - 1 Con Paso 1 Hacer
			Escribir "El numero primo " arreglo_primos[k], " se encuentra en la posición [",k,"] del arreglo";
		Fin Para
		
FinProceso

