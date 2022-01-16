Algoritmo Problema_5_17
	//5.17 pag. 169 Libro de Pinales
	//Una compañía de transporte cuenta con cinco choferes, de los cuales 
	//se conoce: nombre, horas trabajadas cada día de la semana (seis días)
	//y sueldo por hora. Realice un algoritmo que:
	//		a) Calcule el total de horas trabajadas a la semana para cada trabajador.
	//		b) Calcule el sueldo semanal para cada uno de ellos.
	//		c) Calcule el total que pagará la empresa.
	//		d) Indique el nombre del trabajador que labora más horas el día lunes.
	//		e) Imprima un reporte con todos los datos anteriores.
	//Segun la NOM-087 de tiempos de conducción y pausas que publicó la SCT
	//Para un chofer:
	//		a) El tiempo máximo de conducción en 24 horas es 14 horas
	//  	b) No se permite conducir mas de 56 horas semanales
	//con base en las horas trabajadas y el pago por hora, considerando que
	//a partir de la hora número 41 y hasta la 45, cada hora se le paga el doble, 
	//de la hora 46 a la 56 el triple.
	Definir NomChofer, Nombre Como Caracter
	Definir NumeroChofer, HorasDiariasTrabajadas, A, Dia, TotalHorasDiarias, MayorLunes Como Entero
	Definir Sueldo, SueldoDiario, SueldoSem, TotalPagar Como Real
	MayorLunes <- 0
	NumeroChofer <- 0
	Dia <- 0
	A <- 0
	TotalPagar <- 0
	Escribir " _________________________"
	Escribir "|   Transporte Mexicano   |"
	Escribir "|<<<<<<<<<<<<<>>>>>>>>>>>>|"
	Escribir ""
	Escribir "Bienvenido a esta herramienta administrativa"
	Escribir "que ayuda a calcular pagos semanales."
	Escribir Sin Saltar "Ingrese el número de choferes ---"
	Leer A
	Escribir Sin Saltar "Ingrese el sueldo por hora de un chofer $---"
	Leer Sueldo
	Escribir ""
	
	Dimension NomChofer[A]
	Dimension HorasDiariasTrabajadas[A,6]
	Dimension SueldoDiario[A,6]
	Dimension SueldoSem[A]
	Dimension TotalHorasDiarias[A]
	
	Para NumeroChofer=1 Hasta A Con Paso 1 Hacer
		Escribir Sin Saltar "No.",NumeroChofer,": "
		Escribir Sin Saltar "Nombre del Chofer ---"
		Leer NomChofer[NumeroChofer]
		Escribir "      Horas Trabajadas"
		Para Dia=1 Hasta 6 Hacer
			Segun Dia Hacer
				1: Escribir Sin Saltar "      Lunes------"
					Leer HorasDiariasTrabajadas[NumeroChofer,1]
					SueldoDiario[NumeroChofer,1] <- HorasDiariasTrabajadas[NumeroChofer,1]*Sueldo
				2: Escribir Sin Saltar "      Martes-----"
					Leer HorasDiariasTrabajadas[NumeroChofer,2]
					SueldoDiario[NumeroChofer,2] <- HorasDiariasTrabajadas[NumeroChofer,2]*Sueldo
				3: Escribir Sin Saltar "      Miercoles--"
					Leer HorasDiariasTrabajadas[NumeroChofer,3]
					SueldoDiario[NumeroChofer,3] <- HorasDiariasTrabajadas[NumeroChofer,3]*Sueldo
				4: Escribir Sin Saltar "      Jueves-----"
					Leer HorasDiariasTrabajadas[NumeroChofer,4]
					SueldoDiario[NumeroChofer,4] <- HorasDiariasTrabajadas[NumeroChofer,4]*Sueldo
				5: Escribir Sin Saltar "      Viernes----"
					Leer HorasDiariasTrabajadas[NumeroChofer,5]
					SueldoDiario[NumeroChofer,5] <- HorasDiariasTrabajadas[NumeroChofer,5]*Sueldo
				6: Escribir Sin Saltar "      Sabado-----"
					Leer HorasDiariasTrabajadas[NumeroChofer,6]
					SueldoDiario[NumeroChofer,6] <- HorasDiariasTrabajadas[NumeroChofer,6]*Sueldo
			FinSegun
		FinPara
		Para Dia=1 Hasta 6 Con Paso 1 Hacer
			SueldoSem[NumeroChofer] <- SueldoSem[NumeroChofer]+SueldoDiario[NumeroChofer,Dia]
		FinPara
		Escribir "      Total a pagar en la semana = $",SueldoSem[NumeroChofer]
	FinPara
	
	Para NumeroChofer=1 Hasta A Con Paso 1 Hacer
		Para Dia=1 Hasta 6 Con Paso 1 Hacer
			TotalHorasDiarias[NumeroChofer] <- TotalHorasDiarias[NumeroChofer]+HorasDiariasTrabajadas[NumeroChofer,Dia]
		FinPara
	FinPara
	
	Para NumeroChofer=1 Hasta A con Paso 1 Hacer
		Si HorasDiariasTrabajadas[NumeroChofer,1] > Mayor Entonces
			MayorLunes <- HorasDiariasTrabajadas[NumeroChofer,1]
			Nombre <- NomChofer[NumeroChofer]
		FinSi
	FinPara
	
	Para NumeroChofer=1 Hasta A Con Paso 1 Hacer
		TotalPagar <- TotalPagar+SueldoSem[NumeroChofer]
	FinPara
	Escribir ""
	Escribir "Esta semana la empresa paga: $",TotalPagar
	Escribir "El chofer que trabajo mas el dia lunes fue ",Nombre," con ",MayorLunes," horas"
	Escribir ""
	Escribir "**************************************************"
	Escribir "                     Resumen"
	Escribir ""
	
	Para NumeroChofer=1 Hasta A Con Paso 1 Hacer
		Escribir "No.",NumeroChofer,": ",NomChofer[NumeroChofer],"          |Sueldo por hora: $",Sueldo;
		Escribir "      Total de horas Trabajadas en la semana: ",TotalHorasDiarias[NumeroChofer]
		Escribir "      Pago Semanal: $", SueldoSem[NumeroChofer]
		Escribir "--------------------------------------------------------"
	FinPara
	Escribir "    Esta semana la empresa paga: $",TotalPagar
FinAlgoritmo
//212H17064_Moisés Hernández Cruz_08 de enero 2022	