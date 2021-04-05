Algoritmo TP2_EJE4
	Definir operacion como entero;
	Definir peso_arg como real;
	Definir peso_chileno como real;
	Definir dolar como real;
	Definir libras_esterlinas como real;
	Definir sol_peruano como real;
	Definir yuan como real;
	
	Escribir " 1 . Pesos argentinos a dolar";
	Escribir " 2 . Pesos argentinos a peso chileno";
	Escribir " 3 . Pesos argentinos a libras esterlinas";
	Escribir " 4 . Pesos argentinos a sol peruano";
	Escribir " 5 . Pesos argentinos a yuan";
	Escribir " 6  salir";
	Escribir "elija un método de conversion ";
	leer operacion ;
	
	Segun operacion Hacer
		1:
			Escribir "ingrese pesos argentinos ";
			leer peso_arg;
			dolar =  peso_arg *0.011;
			Escribir "USD" dolar;
		2:	
			Escribir "ingrese pesos argentinos "
			leer peso_arg;
			peso_chileno= peso_arg * 7.81;
			Escribir "$",peso_chileno " Pesos chilenos";
		3:
			Escribir "ingrese pesos argentinos ";
			leer peso_arg;
			libras_esterlinas= peso_arg * 0.0079;
			Escribir "$" libras_esterlinas " libras esterlinas";
		4: 
			Escribir "ingrese pesos argentinos ";
			leer peso_arg;
			sol_peruano= peso_arg * 0.041;
			Escribir "$",sol_peruano " soles peruanos";
		5:
			Escribir "ingrese pesos argentinos ";
			leer peso_arg;
			yuan= peso_arg* 0.072;
			Escribir "$" yuan " yuanes";
			
		6:	Escribir "saliendo... aguarde un momento ";
			esperar 1 Segundos
			Borrar Pantalla
		De Otro Modo:
			Escribir "opcion no valida";
	Fin Segun
	
FinAlgoritmo
