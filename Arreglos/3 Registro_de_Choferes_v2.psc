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
	Definir NumeroChofer, HorasDiariasTrabajadas, A, Dia, HorasSemana, MayorDeLaSemana Como Entero
	Definir Sueldo, SueldoSem, TotalPagar Como Real
	NumeroChofer <- 0
	A <- 0
	Dia <- 0
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
	Dimension HorasSemana[A]
	Dimension SueldoSem[A]
	Dimension MayorDeLaSemana[6]
	Dimension Nombre[6]
	Para NumeroChofer=1 Hasta A Con Paso 1 Hacer
		Escribir Sin Saltar "No.",NumeroChofer,": "
		Escribir Sin Saltar "Nombre del Chofer ---"
		Leer NomChofer[NumeroChofer]
		Escribir "      Horas Trabajadas"
		Para Dia=1 Hasta 6 Hacer
			Segun Dia Hacer
				1: Escribir Sin Saltar "      Lunes------"
				2: Escribir Sin Saltar "      Martes-----"
				3: Escribir Sin Saltar "      Miercoles--"
				4: Escribir Sin Saltar "      Jueves-----"
				5: Escribir Sin Saltar "      Viernes----"
				6: Escribir Sin Saltar "      Sabado-----"
			FinSegun
			Leer HorasDiariasTrabajadas[NumeroChofer,Dia]
			SueldoSem[NumeroChofer] <- SueldoSem[NumeroChofer]+(HorasDiariasTrabajadas[NumeroChofer,Dia]*Sueldo)
			HorasSemana[NumeroChofer] <- HorasSemana[NumeroChofer]+HorasDiariasTrabajadas[NumeroChofer,Dia]
		FinPara
		Escribir "      Total a pagar en la semana = $",SueldoSem[NumeroChofer]
		Escribir ""
		TotalPagar <- TotalPagar+SueldoSem[NumeroChofer]
	FinPara
	Para Dia=1 Hasta 6 Con Paso 1 Hacer
		Para NumeroChofer=1 Hasta A Con Paso 1 Hacer
			Si HorasDiariasTrabajadas[NumeroChofer,Dia] > MayorDeLaSemana[Dia] Entonces
				MayorDeLaSemana[Dia] <- HorasDiariasTrabajadas[NumeroChofer,Dia]
				Nombre[Dia] <- NomChofer[NumeroChofer]
			FinSi
		FinPara
	FinPara
	Escribir "Esta semana la empresa paga: $",TotalPagar
	Escribir "El chofer que trabajo mas el dia lunes fue *",Nombre[1],"* con ",MayorDeLaSemana[1]," horas"
	Escribir "El chofer que trabajo mas el dia martes fue *",Nombre[2],"* con ",MayorDeLaSemana[2]," horas"
	Escribir "El chofer que trabajo mas el dia miercoles fue *",Nombre[3],"* con ",MayorDeLaSemana[3]," horas"
	Escribir "El chofer que trabajo mas el dia jueves fue *",Nombre[4],"* con ",MayorDeLaSemana[4]," horas"
	Escribir "El chofer que trabajo mas el dia viernes fue *",Nombre[5],"* con ",MayorDeLaSemana[5]," horas"
	Escribir "El chofer que trabajo mas el dia sabado fue *",Nombre[6],"* con ",MayorDeLaSemana[6]," horas"
	Escribir ""
	Escribir "**************************************************"
	Escribir "                     Resumen"
	Escribir "**************************************************"
	Para NumeroChofer=1 Hasta A Con Paso 1 Hacer
		Escribir "No.",NumeroChofer,": ",NomChofer[NumeroChofer],"          |Sueldo por hora: $",Sueldo;
		Escribir "      Total de horas Trabajadas en la semana: ", HorasSemana[NumeroChofer]
		Escribir "      Pago Semanal: $", SueldoSem[NumeroChofer]
		Escribir "--------------------------------------------------------"
	FinPara
	Escribir "    Esta semana la empresa paga: $",TotalPagar
FinAlgoritmo
//212H17064_Moisés Hernández Cruz_08 de enero 2022	