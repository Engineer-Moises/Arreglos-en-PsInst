Algoritmo Ahorro_Personal
	//Se requiere un algoritmo para determinar cuánto ahorrará una persona
	//en un año, si al final de cada mes deposita variables cantidades de dinero; además,
	//se requiere saber cuánto lleva ahorrado cada mes. Realice el diagrama de flujo,
	//el pseudocódigo y el diagrama N/S para representarlo, utilizando un ciclo apropiado.
	
	Definir Ahorro Como Real
	Definir Cantidad, Mes Como Entero
	Definir M Como Caracter
	
	Ahorro <- 0
	Mes <- 1
	
	Escribir "Ahorro personal durante 12 meses"
	Mientras Mes <= 12 Hacer
		Borrar Pantalla
		Segun Mes
			1: M <- "ENERO:"
			2: M <- "FEBRERO:"
			3: M <- "MARZO:"
			4: M <- "ABRIL:"
			5: M <- "MAYO:"
			6: M <- "JUNIO:"
			7: M <- "JULIO:"
			8: M <- "AGOSTO:"
			9: M <- "SEPTIEMBRE:"
			10: M <- "OCTUBRE:"
			11: M <- "NOVIEMBRE:"
			12: M <- "DICIEMBRE:"
		FinSegun
		
		Escribir "Ingese la cantidad que va a ahorra para el mes de"
		Escribir M
		Leer Cantidad
		Ahorro <- Ahorro + Cantidad
		Escribir ""
		Escribir "El ahorro del mes es $",Ahorro
		Mes <- Mes + 1
		Escribir ""
		Escribir "Presione cualquier tecla para continuar"
		Esperar Tecla
	FinMientras
	Escribir ""
	Escribir "El ahorro final es: $",Ahorro
FinAlgoritmo