Algoritmo mayor_y_menor
	Definir number,i Como Entero
	
	max=0
	min=100
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		number=Aleatorio(1,100)
		Escribir,number
		si(number>max)
			max=number
		FinSi
		si(number<min)
			min=number 
			
		FinSi
		
	Fin Para
	Escribir "NUMERO MAXIMO= ",max
	Escribir "NUMERO MENOR= " ,min
	
	
	
	
	
	
	
FinAlgoritmo
