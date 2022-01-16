Algoritmo While_Edad
	//Ejemplo 4.4 del Libro de Pinales
	//Se requiere un algoritmo para obtener la edad promedio de un grupo de N
	//alumnos. Realice el diagrama de flujo, el pseudocódigo y el diagrama N/S
	//para representarlo, utilizando los tres tipos de estructuras de ciclo.
	Definir N,Edad,Acumulador,Contador Como Entero
	Definir Promedio Como Real
	Contador <- 0
	Acumulador <- 0
	Escribir "Programa para promediar la edad de un grupo de alumnos"
	Escribir ""
	Escribir "Ingrese el número de alumnos:---", Sin Saltar;
	Leer N
	Mientras N <= 0 Hacer
		Leer N
	FinMientras
	Mientras Contador < N Hacer
		Contador <- Contador + 1
		Escribir "Ingresa la edad del alumno número: [ ",Contador," ] ---",Sin Saltar;
		Leer Edad
		Acumulador <- Acumulador + Edad
	FinMientras
	Promedio <- Acumulador / N
	Escribir "El promedio de la edad de los ",N,"(",Contador,") alumnos es: --->",Promedio
FinAlgoritmo