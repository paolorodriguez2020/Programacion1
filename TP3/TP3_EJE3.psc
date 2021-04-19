 Algoritmo suma_de_100_numeros
	Definir option,suma,suma1,suma2 , salida como entero 
	
	Escribir "BIENVENIDO"
	Escribir "Por favor seleccione con que estructura"
	Escribir "desea sumar los primeros 100 numeros enteros"

	Repetir
		
		Escribir " " 
		Escribir "1.ESTRUCTURA PARA "
		Escribir "2.ESTRUCTURA MIENTRAS"
		Escribir "3.ESTRUCTURA REPETIR"
		Escribir "4.SALIR"
		leer option
		
		Segun option Hacer
			1:
				contador1=0
				acumulador1=0
				Para i<-1 Hasta 100 Con Paso 1 Hacer
					
					//Escribir contador1 (opcional)
					
					contador1=contador1+1
					acumulador1=acumulador1+contador1
					
				Fin Para
					Escribir"USTED SELECCIONO LA OPCION 1"
					Escribir "la suma de los primero 100 numeros con (PARA) es = " ,acumulador1
					
					Escribir "Desea salir ?"
					Escribir "1. si"
					Escribir "2. no"
					leer salida
			2:  
				contador2=0
				acumulador2=0
				Mientras contador2<=100 Hacer
					//Escribir contador2 (opcional)
					
					contador2=contador2+1
					acumulador2=acumulador2+contador2
					
				Fin Mientras
					Escribir"USTED SELECCIONO LA OPCION 2"
					Escribir "la suma de los primero 100 numeros con (MIENTRAS) es = " ,acumulador2-contador2
					
					Escribir "Desea salir ?"
					Escribir "1. si"
					Escribir "2. no"
					leer salida
			3:

				contador3=0
				acumulador3=0
				Repetir
					//Escribir contador3 (opcional)
					contador3=contador3+1
					acumulador3=acumulador3+contador3
				Hasta Que contador3>100
					Escribir"USTED SELECCIONO LA OPCION 3"
					Escribir"la suma de los primero 100 numeros con (REPETIR) es = " ,acumulador3-contador3
					
					Escribir "Desea salir ?"
					Escribir "1. si"
					Escribir "2. no"
					leer salida
					
			4: 
				Escribir "SALIENDO..."	
			
				Escribir "Desea salir ?"
				Escribir "1. si"
				Escribir "2. no"
				leer salida
				
			De Otro Modo:
						Escribir ""
						Escribir"Opcion Incorrecta"
				
		Fin Segun
		
	Hasta Que (salida=1)
	
	
	 
	
FinAlgoritmo
