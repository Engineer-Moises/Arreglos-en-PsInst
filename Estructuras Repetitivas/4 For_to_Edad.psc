Algoritmo For_to_Edad
	//Ejemplo 4.4 del Libro de Pinales
	//Se requiere un algoritmo para obtener la edad promedio de un grupo de N
	//alumnos. Realice el diagrama de flujo, el pseudocódigo y el diagrama N/S
	//para representarlo, utilizando los tres tipos de estructuras de ciclo.
	Definir N,Edad,Acumulador,Indice Como Entero
	Definir Promedio Como Real
	Acumulador <- 0
	Escribir "Programa para promediar la edad de un grupo de alumnos"
	Escribir ""
	Escribir "Ingrese el número de alumnos:---", Sin Saltar;
	Repetir
		Leer N
	Hasta Que N >= 0
	Si N > 0 Entonces
		Para Indice = 1 Hasta N Hacer
			Escribir "Ingresa la edad del alumno número: [ ",Indice," ] ---",Sin Saltar;
			Leer Edad
			Acumulador <- Acumulador + Edad
		FinPara
		Promedio <- Acumulador / N
		Escribir "El promedio de la edad de los ",N," Indice=(",Indice,") alumnos es: --->",Promedio
	SiNo
		Escribir "Fin"
		Escribir "Indice = ",Indice
	FinSi
FinAlgoritmo