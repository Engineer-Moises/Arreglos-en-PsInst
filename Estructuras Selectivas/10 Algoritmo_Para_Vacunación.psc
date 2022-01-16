Algoritmo Programa_Para_Vacunacion
	//3.19 La secretaria de salud requiere un Pseudocódigo y Diagrama de flujo que le represente
	//el algoritmo que permita determinar qué tipo de vacuna (A, B o C) 
	//	debe aplicar a una persona, considerando que si es mayor de 70 años, 
	//sin importar el sexo, se le aplica la tipo C; si tiene entre 16 y 69 años, y es mujer, 
	//se le aplica la B, y si es hombre, la A; si es menor de 16 años, se le aplica la tipo A, sin importar el sexo.
	
	//Vacuna A = AstraZeneca, Vacuna B = Pfizer, Vacuna C = CanSino
	Definir Sexo Como Caracter
	Definir Edad Como Entero
	Escribir "************************************************************"
	Escribir "                  Secretaria de Salud"
	Escribir "************************************************************"
	Escribir "Por favor ingrese la información que se solicita para saber "
	Escribir "que tipo de vacuna se le aplicara."
	Escribir ""
	Escribir "Edad: ",Sin Saltar;
	Leer Edad
	Escribir "Sexo (M = Masculino, F = Femenino): ",Sin Saltar;
	Leer Sexo
	Escribir ""
	
	Si Edad >= 70 Entonces
		Escribir "A usted se le aplicara la vacuna CanSino"
	SiNo
		Si Edad >= 16 y Sexo = "F" Entonces
			Escribir "A usted se le aplicara la vacuna Pfizer"
		SiNo
			Si Edad >=16 y Sexo = "M" Entonces
				Escribir "A usted se le aplicara la vacuna AstraZeneca"
			SiNo
				Si Edad < 16
					Escribir "A usted se le aplicara la vacuna AstraZeneca"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo