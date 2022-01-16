Algoritmo Paqueteria_DHM
	//Una compañía de paquetería internacional tiene servicio en algunos países de América del Norte, América Central, América del Sur, Europa y Asia.
	//El costo por el servicio de paquetería se basa en el peso del paquete y la zona a la que va dirigido.
	Definir Zona, PesoPaq Como Entero 
	Definir Costo Como Real
	Definir Resp Como Caracter
	Repetir
		Borrar Pantalla
		Escribir " ____________________________"
		Escribir "| Servicio de Paqueteria DHM |"
		Escribir " ----------------------------"
		Escribir "DHM es una empresa dedicada al envío de paquetes de manera internacional"
		Escribir "1 =  America del Norte ________$ 11.00"
		Escribir "2 =  America Central __________$ 10.00"
		Escribir "3 =  America del Sur __________$ 12.00"
		Escribir "4 =  Europa ___________________$ 24.00"
		Escribir "5 =  Asia _____________________$ 27.00"
		Escribir " "
		Escribir "Escoga a que zona desea enviar su paquete: ", Sin Saltar;
		Leer Zona;
		Mientras Zona < 1 o Zona >5 Hacer
			Escribir "La respuesta ",Zona," no es valida."
			Escribir "Solo se permiten números del 1 al 5"
			Leer Zona
		FinMientras
		Escribir "Ingrese cuanto pesa el paquete (en gramos, g): ", Sin Saltar;
		Leer PesoPaq
		Si PesoPaq <= 0 Entonces
			Mientras PesoPaq <= 0 Hacer
				Escribir "Disculpe, pero solo se permiten valores mayores a 0";
				Leer PesoPaq;
			FinMientras
		FinSi
		Si PesoPaq <= 5000 Entonces
			Segun Zona Hacer
				1:
					Costo <- PesoPaq * 11;
				2:
					Costo <- PesoPaq * 10;
				3:
					Costo <- PesoPaq * 12;
				4:
					Costo <- PesoPaq * 24;
				5:
					Costo <- PesoPaq * 27;
			FinSegun
			Escribir " "
			Escribir "El Costo de su envio es de $", Costo," pesos";
			Escribir "Gracias por usar nuestro servicio"
		SiNo
			Escribir " "
			Escribir "Por cuestiones de logistica y seguridad, lamentamos informarle que no es posible enviar su paquete ya que excede el limite de peso permitido que es de 5000 gramos";
		FinSi
		Escribir "*************************************************************"
		Escribir "Presione cualquier tecla para reiniciar o digite 0 para salir"
		Leer Resp
	Hasta Que Resp = "0";
FinAlgoritmo