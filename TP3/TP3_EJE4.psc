Algoritmo ejerc1
	Definir operacion , n1 ,n2 ,salida como entero
	definir suma,resta,multiplicacion,division,rais,num,pot,rest,m Como Real
	Escribir " PAOLO RODRIGUEZ"
	Escribir " TP 4 EJERCICIO 1"
	Escribir "1 Calculadora."
	escribir "Que permita ingresar dos valores, y en un menú me permita realizar 6 operaciones aritméticas (suma, resta, multiplicación, división, potencia y raíz). Que me permita iterar por las distintas alternativas."
	Escribir ""
	
	Repetir
			Escribir " 1. Suma"
			Escribir " 2. Resta"
			Escribir " 3. Multiplicacion"
			Escribir " 4. Division"		
			Escribir " 5. Raiz"
			Escribir " 6. Potencia"
			Escribir " 7. Salir"
			Escribir ""
			Escribir "Seleccione la operacion que desea realizar"
			Escribir ""
			leer operacion 
		Segun operacion Hacer
		1:  
			escribir"Selecciono la opcion 1 "
			Escribir "Ingrese el primer valor"
			leer n1
			Escribir "Ingrese el segundo valor "
			leer n2
			suma=n1+n2
			Escribir ""
			Escribir "La suma de " n1 " y " n2 " es = " suma
			Escribir ""
			//
			Escribir "Desea salir ?"
			Escribir "1. si"
			Escribir "2. no"
			leer salida
		2:  
			escribir"Selecciono la opcion 2 "
			Escribir "Ingrese el primer valor"
			leer n1
			Escribir "Ingrese el segundo valor "
			leer n2
			resta=n1-n2
			Escribir ""
			Escribir "La resta de " n1 " y " n2 " es = " resta
			Escribir ""
			//
			Escribir "Desea salir ?"
			Escribir "1. si"
			Escribir "2. no"
			leer salida
		3:  
			escribir"Selecciono la opcion 3 "
			Escribir "Ingrese el primer valor"
			leer n1
			Escribir "Ingrese el segundo valor "
			leer n2
			multiplicacion=n1*n2
			Escribir ""
			Escribir "la multiplicaion de " n1 " y " n2 " es = " multiplicacion
			Escribir ""
			//
			Escribir "Desea salir ?"
			Escribir "1. si"
			Escribir "2. no"
			leer salida
		4:  
			escribir"Selecciono la opcion 4 "
			Escribir "Ingrese el primer valor"
			leer n1
			Escribir "Ingrese el segundo valor "
			leer n2
		    division=n1/n2
			Escribir ""
			Escribir "La division de " n1 " y " n2 " es = " division
			Escribir ""
			//
			Escribir "Desea salir ?"
			Escribir "1. si"
			Escribir "2. no"
			leer salida
		5:   
			escribir"Selecciono la opcion 5 "
			Escribir "Ingrese el numero al que le quiera sacar la raiz"
			leer r
			Escribir "Ingrese la raiz"
			leer m
			rais= r^(1/m)
			Escribir ""
			Escribir " La raiz de " r " es = " rais
			Escribir ""
			//
			Escribir "Desea salir ?"
			Escribir "1. si"
			Escribir "2. no"
			leer salida
		6: 
			
			escribir"Selecciono la opcion 6 "
				res=0
				num=0
				pot=0
			Escribir "Ingrese la base"
			leer num
			Escribir "Ingrese el valor de la potencia a elevar"
			leer pot
			rest =num^pot
			Escribir ""
			Escribir " El resultado es = " rest
			Escribir ""
			//
			Escribir "Desea salir ?"
			Escribir "1. si"
			Escribir "2. no"
			leer salida
			
			
		7: 	Escribir "Desea salir ?"
			Escribir "1. si"
			Escribir "2. no"
			leer salida
			
			
		De Otro Modo:
					Escribir ""
					Escribir "opcion inconrrecta"
					Escribir " "
		Fin Segun
		
	Hasta que (salida=1)

FinAlgoritmo
