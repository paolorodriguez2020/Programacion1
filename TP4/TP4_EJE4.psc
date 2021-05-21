Algoritmo TP4_EJE4	
//	4. Desarrollar un algoritmo que permita generar una contraseña aleatoria
//	numérica de 8 dígitos. Para ello se deberá utilizar un arreglo de tamaño 8,
//	que permita almacenar en cada una de sus posiciones los dígitos obtenidos
//	de forma aleatoria.Finalmente se deberá recorrer nuevamente el arreglo para mostrar la
//contraseña obtenida. Para mostrar la contraseña en una instrucción
//	Escribir, investigar acerca de las funciones concatenar() y
//	convertiratexto().

Dimension arreglo_contrasenia[8] //primer arreglo 

//bucle para generar la contraseña  de 9 digitos 
para i <- 0 hasta 8-1 con paso 1 Hacer
	arreglo_contrasenia[i]=Aleatorio(0,9)
	Escribir " en el indice [" ,i, "] el numero es " , arreglo_contrasenia[i]
FinPara

//bucle para mostrar la contraseña 
para i <- 0 hasta 8-1 con paso 1 Hacer
	Escribir  " ", Concatenar(ConvertirATexto(arreglo_contrasenia[j]), " ") Sin Saltar;
 FinPara
 
 Escribir ""
 
FinAlgoritmo
