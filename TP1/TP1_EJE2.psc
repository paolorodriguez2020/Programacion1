Algoritmo TP1_EJE2
	Definir a�o_nac Como Entero;
	Definir a�o_act como entero;
	Definir edad como entero;
	Definir a�o Como Entero;
	a�o=2021;
	edad = a�o_act - a�o_nac;
	Escribir  "ingrese el a�o de nacimiento"
	leer a�o_nac
	Escribir "ingrese el a�o de actual"

	
	Repetir
		leer a�o_act
		Si a�o_act<> a�o  Entonces
			Escribir "error no es el a�o actual intente nuevamente";
		
		Fin Si
		
	
		
    Hasta Que (a�o_act =a�o );
    edad = a�o_act - a�o_nac;
	Escribir "la edad de la persona es de " edad " a�os ";
FinAlgoritmo
