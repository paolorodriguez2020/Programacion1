// Desarrolle un algoritmo que permita jugar al TA-TE-TI contra la computadora.

Algoritmo TP4_EJ5 // ¡¡¡Deshabilitar la funcion para utilizar indices en arreglos con base 0!!!. 
	
	// Defino las variables
	Definir x,n,jugador Como Entero
	Definir vector como caracter
	
	Dimension vector[9]
	para x = 1 hasta 9 Con Paso 1 Hacer
		vector(x) = " "
	FinPara
	
	x = 1 // Contador de jugadas
	
	// Para determinar al azar el Jugador que juega primero
	jugador = azar(2)+1
	
	
	Mientras x <= 9 Hacer
		
		// Dibijado del tablero y los números  de cada posición
		Escribir "Ingresa una posicion jugador: ",jugador
		Escribir "1,2,3","    ",vector(1),",",vector(2),",",vector(3)
		Escribir "4,5,6","    ",vector(4),",",vector(5),",",vector(6)
		Escribir "7,8,9","    ",vector(7),",",vector(8),",",vector(9)
		leer n
		
		si n > 0 y n < 10 Entonces // Para que no se ingrese una opción incorrecta.
			
			si jugador mod 2 == 1 Entonces // Turno Jugador 1
				
				si vector(n) == " " Entonces //Si la casilla está vacía
					vector(n) = "X" // Elección del Jugador 1
					
					jugador = 2 // Cambio de Jugador
					
					// Condiciones para que Jugador 1 la partida:
					si vector(1) == "X" y vector(2) == "X" y vector(3) == "X" Entonces
						Escribir "EL jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(4) == "X" y vector(5) == "X" y vector(6) == "X" Entonces
						Escribir "EL jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(7) == "X" y vector(8) == "X" y vector(9) == "X" Entonces
						Escribir "EL jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(1) == "X" y vector(4) == "X" y vector(7) == "X" Entonces
						Escribir "EL jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(2) == "X" y vector(5) == "X" y vector(8) == "X" Entonces
						Escribir "EL jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(2) == "X" y vector(6) == "X" y vector(9) == "X" Entonces
						Escribir "EL jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(1) == "X" y vector(5) == "X" y vector(9) == "X" Entonces
						Escribir "EL jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(3) == "X" y vector(5) == "X" y vector(7) == "X" Entonces
						Escribir "EL jugador 1 ha ganado"
						x = 9
					FinSi
					
				// Si no se eligió una opción correcta:	
				SiNo
					Escribir "Esa posicion esta ocupada"
				FinSi
				
			// Turno Jugador 2
			SiNo
				si vector(n) == " " Entonces // Si la casilla está vacía
					
					vector(n) = "O" // E	lección del Jugador 2
					
					jugador = 1 // Cambio de jugador
					
					// Condiciones para que Jugador 2 gane la partida:
					si vector(1) == "O" y vector(2) == "O" y vector(3) == "O" Entonces
						Escribir "EL jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(4) == "O" y vector(5) == "O" y vector(6) == "O" Entonces
						Escribir "EL jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(7) == "O" y vector(8) == "O" y vector(9) == "O" Entonces
						Escribir "EL jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(1) == "O" y vector(4) == "O" y vector(7) == "O" Entonces
						Escribir "EL jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(2) == "O" y vector(5) == "O" y vector(8) == "O" Entonces
						Escribir "EL jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(2) == "O" y vector(6) == "O" y vector(9) == "O" Entonces
						Escribir "EL jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(1) == "O" y vector(5) == "O" y vector(9) == "O" Entonces
						Escribir "EL jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(3) == "O" y vector(5) == "O" y vector(7) == "O" Entonces
						Escribir "EL jugador 2 ha ganado"
						x = 9
					FinSi
					
				// Si no se eligió una opción corecta:
				SiNo
					Escribir "Esa posicion esta ocupada"
				FinSi				
			FinSi
			
		// Si la opción es incorrecta:	
		SiNo
			Escribir "Posicion incorrecta"
		FinSi
		
		// Sumamos 1 al contador
		x = x + 1
	FinMientras
	
	// Jugada final
	Escribir "1,2,3","    ",vector(1),",",vector(2),",",vector(3)
	Escribir "4,5,6","    ",vector(4),",",vector(5),",",vector(6)
	Escribir "7,8,9","    ",vector(7),",",vector(8),",",vector(9)
	
FinAlgoritmo 