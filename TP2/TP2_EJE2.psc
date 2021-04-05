Algoritmo TP2_EJE2
	definir bomba como entero ;
	Escribir " DIGITE UN NUMERO ENTRE 1 Y 4 PARA SLEECCIONAR EL TIPO DE BOMBA";
	Escribir "1";
	Escribir "2";
	Escribir "3";
	Escribir "4";
	
	leer bomba;
	//correccion de errores
	Si (bomba< 1 o bomba>4) Entonces
		Escribir "no hau establecido un valor definido para el tipo de bomba o ha introducido un dato invalido" 
	SiNo
		si bomba==1 Entonces
			escribir "La bomba es una bomba de agua";
		SiNo
			si bomba==2 Entonces
				escribir "La bomba es una bomba de gasolina";
			SiNo
				si bomba==3 Entonces
					
					Escribir "La bomba es una bomba de hormigón";
				sino
					
					Escribir "La bomba es una bomba de pasta alimenticia";
					
				FinSi
			FinSi
		FinSi
	Fin Si
	
FinAlgoritmo 
	