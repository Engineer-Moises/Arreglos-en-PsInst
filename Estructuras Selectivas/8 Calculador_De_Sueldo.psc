Algoritmo CALCULADOR_DE_SUELDO
	//3.12 Realice un algoritmo que permita determinar el sueldo semanal de un trabajador 
	//	con base en las horas trabajadas y el pago por hora, considerando que
	//	a partir de la hora número 41 y hasta la 45, cada hora se le paga el doble, 
	//	de la hora 46 a la 50, el triple, y que trabajar más de 50 horas no está permitido. 
	//	Represente el algoritmo mediante Pseudocódigo, diagrama de flujo, y diagrama N/S.
	Definir HorasTra Como Entero
	Definir Sueldo, PagoSema Como Real
	Definir Nombre Como Caracter
	Escribir " __________________________________________ "
	Escribir "|           Stark Industris                |"
	Escribir " ------------------------------------------ "
	Escribir "Bienvenido a esta herramienta administrativa"
	Escribir "que ayuda a calcular su pago semanal."
	Escribir ""
	Escribir "Por favor ingrese los siguientes datos:"
	Escribir "Nombre: ", Sin Saltar;
	Leer Nombre
	Escribir "Sueldo por hora: ",Sin Saltar;
	Leer Sueldo
	Escribir "Total de horas trabajadas en la semana: ", Sin Saltar;
	Leer HorasTra
	Escribir ""
	
	Si HorasTra > 50 Entonces
		PagoSema <- HorasTra*(3*Sueldo)
		Escribir "Segun el articulo 61 de la Ley Federal del Trabajo"
		Escribir "una persona NO deberia trabajar mas de 50 horas a"
		Escribir "la semana. Pero aun asi les seran pagadas todas su"
		Escribir "horas."
		Escribir ""
		Escribir Nombre,", su pago de esta semana es de $",PagoSema," pesos"
	SiNo
		Si HorasTra >= 46 Entonces
			PagoSema <- HorasTra*(3*Sueldo)
			Escribir Nombre,", su pago de esta semana es de $",PagoSema," pesos"
		SiNo
			Si HorasTra >= 41 Entonces
				PagoSema <- HorasTra*(2*Sueldo)
				Escribir Nombre,", su pago de esta semana es de $",PagoSema," pesos"
			SiNo
				PagoSema <- HorasTra*Sueldo
				Escribir Nombre,", su pago de esta semana es de $",PagoSema," pesos"
			FinSi
		FinSi
	FinSi
 FinAlgoritmo