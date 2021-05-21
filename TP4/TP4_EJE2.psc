Algoritmo TP4_EJE2
//2.Desarrollar un algoritmo que llene un arreglo con 20 números de forma
//aleatoria entre 0 y 100 . Luego busque en el arreglo, un número generado
//de forma aleatoria entre 0 y 100, y finalmente muestre: a)- El número a
//buscar, b)- El arreglo, c)- Si encontró el número, la posición donde fue
//hallado, o d)- Si no encontró el número.
	
	
	//definicion de variales a utilizar
	definir tamanio,vector,buscar Como Entero  
	definir encontrado Como Logico 
	encontrado<-Falso
	
	// Inicializar variables
	tamanio=20 //esto me ahorra tiempo por si en algun momento deseo trabajar com + o - numeros 
	buscar=0	
	
	dimension vector[tamanio]  //primer arreglo para trabajar 
	
	
	//llenar el arreglo con numeros aleatorios  
	para i=0 hasta tamanio-1 con paso 1 Hacer
		vector[i]=Aleatorio(0,100)
		Escribir vector[i]
		
	FinPara
	
	//numero aleatorio para buscar en el arreglo 
	buscar=Aleatorio(0,100)
	Escribir "---------------------"
	escribir "Numero a buscar = " buscar
	Escribir "---------------------"
	
	//busqueda en el arreglo del numero aleatorio
	Para j=0 hasta tamanio-1 con paso 1 Hacer
		si(buscar =vector[j])
			Escribir "Encontramos el numero "  buscar  " en la posicion [",j,"] " //mostrar el numero encontrado
			encontrado<-Verdadero //metodo booleano para salir de este condiconal y que no entre al otro if			
		FinSi
		
	FinPara
	si(encontrado=falso) //mostrar si no se encontro el numero a buscar 
		Escribir "No encontramos el numero " ,buscar, " en el arreglo"
		
	FinSi
	
FinAlgoritmo
