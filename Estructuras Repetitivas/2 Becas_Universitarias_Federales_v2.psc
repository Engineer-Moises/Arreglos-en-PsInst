Algoritmo Becas_Universitarias_Federales
	//3.7 El presidente de la rep�blica ha decidido estimular a todos los estudiantes de una universidad 
	//mediante la asignaci�n de becas mensuales, para esto se tomar�n en consideraci�n los siguientes criterios: 
	//	1.- Para alumnos mayores de 18 a�os con promedio mayor o igual a 9, la beca ser� de $2000.00; 
	//	con promedio mayor o igual a 7.5, de $1000.00; para los promedios menores de 7.5 pero mayores o iguales a 6.0, de $500.00; 
	//	a los dem�s se les enviar� una carta de invitaci�n incit�ndolos a que estudien m�s en el pr�ximo ciclo escolar.
	//	2.- A los alumnos de 18 a�os o menores de esta edad, con promedios mayores o iguales a 9, 
	//	se les dar� $3000; con promedios menores a 9 pero mayores o iguales a 8, $2000; para los alumnos con promedios menores a 8 pero 
	//	mayores o iguales a 6, se les dar� $1000, y a los alumnos que tengan promedios menores a 6 se les enviar� carta de invitaci�n. 
	//	Criterio 1: Edad > 18 y Promedio >= 9 -> Beca $2000
	//			    Edad > 18 y Promedio >= 7.5 y Promedio <= 8.9 -> Beca $1000
	//				Edad > 18 y Promedio >= 6.0 y Promedio <= 7.4 -> Beca $500
	//				Edad > 18 y Promedio >= 0 y Promedio <= 5.9 -> Mensaje = "Esfuerzate mas, no dejes de creer sigue avanzando hasta lograr tus metas"
	//	Criterio 2: Edad <= 18 y Promedio >= 9 -> Beca $3000
	//				Edad <= 18 y Promedio >= 8 y Promedio <= 8.9 -> Beca $2000
	//				Edad <= 18 y Promedio >= 6 y Promedio <= 7.9 -> Beca $1000
	//				Edad <= 18 y Promedio < 6 -> Mensaje = "Estudia y esfuerzate para tener mas oportunidades en la vida, 
	//													   y un d�a estaras en el lugar que siempre quisiste estar"
	Definir Nombre, Respuesta Como Caracter
	Definir Edad Como Entero
	Definir Promedio Como Real
	Repetir
		Borrar Pantalla
		Escribir " ______________________________________"
		Escribir "|Universidad Juarez Autonoma de Tabasco|"
		Escribir " --------------------------------------"
		Escribir " "
		Escribir "PROGRAMA FEDERAL DE BECAS UNIVERSITARIAS"
		Escribir " "
		Escribir "Bienvenido al programa de esta Universidad, en"
		Escribir "el que puedes conocer si aplicas para obtener"
		Escribir "una beca por parte del Gobierno Federal"
		Escribir " "
		Escribir "Ingresa los datos del estudiante"
		Escribir "Nombre: ",Sin Saltar;
		Leer Nombre
		Escribir " "
		Escribir "Edad: ",Sin Saltar;
		Leer Edad
		Escribir " "
		Repetir
			Escribir "Ingrese su promedio actual: ",Sin Saltar;
			Leer Promedio
			Si Promedio >= 0 y Promedio <= 10 Entonces
				Si Edad > 18 Entonces
					Si Promedio >= 9 Entonces
						Escribir "Felicidades ",Nombre,", su beca es de $2,000.00 pesos"
					SiNo
						Si Promedio >= 7.5 Entonces
							Escribir "Felicidades ",Nombre,", su beca es de $1,000.00 pesos"
						SiNo
							Si Promedio >= 6 Entonces
								Escribir "Felicidades ",Nombre,", su beca es de $500.00 pesos"
							SiNo
								Si Promedio <6 Entonces
									Escribir "Hola ",Nombre,", lamentamos informarle"
									Escribir "que debido a su promedio, el cual es"
									Escribir "menor a 6.0, usted no aplica para esta"
									Escribir "Beca que est� otorgando el Presidente"
									Escribir "de la Rep�blica. Te invito para continues"
									Escribir "estudiando y esforzandote por mejorar"
									Escribir "para el proximo ciclo escolar."
									Escribir "�Sigue Adelante!"
									Escribir "Esfuerzate mas, no dejes de creer, sigue avanzando hasta lograr tu meta"
									Escribir " "
									Escribir "Atte. Lic. Andres Manuel Lop�z Obrador"
								FinSi
							FinSi
						FinSi
					FinSi
				SiNo				//Edad es menor de 18
					Si Promedio >= 9 Entonces
						Escribir "Felicidades ",Nombre,", su beca es de $3,000.00 pesos"
					SiNo
						Si Promedio >= 8 Entonces
							Escribir "Felicidades ",Nombre,", su beca es de $2,000.00 pesos"
						SiNo
							Si Promedio >= 6 Entonces
								Escribir "Felicidades ",Nombre,", su beca es de $1,000.00 pesos"
							SiNo
								Escribir "Estudia y esfu�rzate para tener mas oportunidades en la vida," 
								Escribir "y un d�a estar�s en el lugar que siempre quisiste estar"
							FinSi
						FinSi
					FinSi
				FinSi
			SiNo			//Promedio Fuera del rango 0...10
				Escribir " "
				Escribir "ERROR. El promedio que introdujo es incorrecto. Intentelo de nuevo"
			FinSi
		Hasta Que Promedio >= 0 y Promedio <= 10
		Escribir " "
		Escribir "*****************************************"
		Escribir "Digite << S >> � << s >> para salir o presione cualquier tecla para continuar."
		Leer Respuesta
	Hasta Que Respuesta = "S" o Respuesta = "s"
FinAlgoritmo