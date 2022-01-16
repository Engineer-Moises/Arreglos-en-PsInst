Algoritmo Becas_Para_Alumnos_Universitarios
	//3.7 El presidente de la rep�blica ha decidido estimular a todos los estudiantes de una universidad 
	//mediante la asignaci�n de becas mensuales, para esto se tomar�n en consideraci�n los siguientes
	//criterios: 
	//Para alumnos mayores de 18 a�os con promedio mayor o igual a 9, la beca ser� de $2000.00; 
	//con promedio mayor o igual a 7.5, de $1000.00; 
	//para los promedios menores de 7.5 pero mayores o iguales a 6.0, de $500.00; 
	//a los dem�s se les enviar� una carta de invitaci�n incit�ndolos a que estudien m�s en el pr�ximo ciclo escolar.
	//A los alumnos de 18 a�os o menores de esta edad, con promedios mayores o iguales a 9, 
	//se les dar� $3000; con promedios menores a 9 pero mayores o iguales a 8, $2000; 
	//para los alumnos con promedios menores a 8 pero mayores o iguales a 6, se les dar� $1000,
	//y a los alumnos que tengan promedios menores a 6 se les enviar� carta de invitaci�n. 
	Definir Nom, Resp Como Caracter
	Definir Edad Como Entero
	Definir Prom Como Real
	Repetir
		Borrar Pantalla
		Escribir " ______________________________________"
		Escribir "|Universidad Juarez Autonoma de Tabasco|"
		Escribir " --------------------------------------"
		Escribir " "
		Escribir "Bienvenido al programa de esta universidad, en"
		Escribir "el que pudes conocer si aplicas para obtener"
		Escribir "una beca por parte del gobierno federal"
		Escribir " "
		Escribir "Ingresa los datos que se solicitan"
		Escribir "Nombre: ",Sin Saltar;
		Leer Nom
		Escribir " "
		Escribir "Edad: ",Sin Saltar;
		Leer Edad
		Si Edad <= 0 Entonces
			Repetir
				Escribir " "
				Escribir "Error. La edad que introdujo es incorrecto"
				Escribir "Intentelo de nuevo: ", Sin Saltar;
				Leer Edad
			Hasta Que Edad > 0
		FinSi
		Escribir " "
		Escribir "Ingrese su prodemio (Ejemplo 8.5): ",Sin Saltar;
		Leer Prom
		Si Prom < 0 o Prom > 10 Entonces
			Repetir
				Escribir " "
				Escribir "Error. El promedio que introdujo es incorrecto"
				Escribir "Intentelo de nuevo: ", Sin Saltar;
				Leer Prom
			Hasta Que Prom >= 0 y Prom <= 10
		FinSi
		Escribir " "
		Si Prom < 6 Entonces
			Escribir "Hola ",Nom,", lamentamos informarle"
			Escribir "que debido a su promedio, el cual es"
			Escribir "menor a 6.0, usted no aplica para la"
			Escribir "beca que est� otorgando el presidente"
			Escribir "de la rep�blica. Le motivamos para"
			Escribir "que pueda seguir estudiando y esfor-"
			Escribir "z�ndose por mejorar para el proximo"
			Escribir "ciclo escolar. �Sigua adelante!"
			Escribir " "
			Escribir "Atte. Direcci�n De Servicios Escolares"
		SiNo
			Si Edad > 18 Entonces
				Si Prom >= 9 Entonces
					Escribir "Felicidades ",Nom,", su beca es de $2,000.00 pesos"
				SiNo
					Si Prom >= 7.5 Entonces
						Escribir "Felicidades ",Nom,", su beca es de $1,000.00 pesos"
					SiNo
						Si Prom >= 6 Entonces
							Escribir "Felicidades ",Nom,", su beca es de $500.00 pesos"
						FinSi
					FinSi
				FinSi
			SiNo
				Si Edad <= 18 Entonces
					Si Prom >= 9 Entonces
						Escribir "Felicidades ",Nom,", su beca es de $3,000.00 pesos"
					SiNo
						Si Prom >= 8 Entonces
							Escribir "Felicidades ",Nom,", su beca es de $2,000.00 pesos"
						SiNo
							Si Prom >= 6 Entonces
								Escribir "Felicidades ",Nom,", su beca es de $1,000.00 pesos"
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir " "
		Escribir "*****************************************"
		Escribir "Digite 0 para salir o presione cualquier"
		Escribir "tecla para continuar."
		Leer Resp
	Hasta Que Resp = "0"
FinAlgoritmo
