Algoritmo TP4_EJE4	
//	4. Desarrollar un algoritmo que permita generar una contrase�a aleatoria
//	num�rica de 8 d�gitos. Para ello se deber� utilizar un arreglo de tama�o 8,
//	que permita almacenar en cada una de sus posiciones los d�gitos obtenidos
//	de forma aleatoria.Finalmente se deber� recorrer nuevamente el arreglo para mostrar la
//contrase�a obtenida. Para mostrar la contrase�a en una instrucci�n
//	Escribir, investigar acerca de las funciones concatenar() y
//	convertiratexto().

Dimension arreglo_contrasenia[8] //primer arreglo 

//bucle para generar la contrase�a  de 9 digitos 
para i <- 0 hasta 8-1 con paso 1 Hacer
	arreglo_contrasenia[i]=Aleatorio(0,9)
	Escribir " en el indice [" ,i, "] el numero es " , arreglo_contrasenia[i]
FinPara

//bucle para mostrar la contrase�a 
para i <- 0 hasta 8-1 con paso 1 Hacer
	Escribir  " ", Concatenar(ConvertirATexto(arreglo_contrasenia[j]), " ") Sin Saltar;
 FinPara
 
 Escribir ""
 
FinAlgoritmo
