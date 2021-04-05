Algoritmo TP1_EJE2
	Definir año_nac Como Entero;
	Definir año_act como entero;
	Definir edad como entero;
	Definir año Como Entero;
	año=2021;
	edad = año_act - año_nac;
	Escribir  "ingrese el año de nacimiento"
	leer año_nac
	Escribir "ingrese el año de actual"

	
	Repetir
		leer año_act
		Si año_act<> año  Entonces
			Escribir "error no es el año actual intente nuevamente";
		
		Fin Si
		
	
		
    Hasta Que (año_act =año );
    edad = año_act - año_nac;
	Escribir "la edad de la persona es de " edad " años ";
FinAlgoritmo
