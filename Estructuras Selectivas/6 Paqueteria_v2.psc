Algoritmo Servicio_Paqueteria
	//Una compañía de paquetería internacional tiene servicio en algunos países de América del Norte,
	//América Central, América del Sur, Europa y Asia. El Costo por el servicio de paquetería se basa
	//en el peso del paquete y la NumZona a la que va dirigido.
	Definir NumZona Como Entero
	Definir PesoPack,Costo Como Real
	Escribir "* * *   Servicio de Paqueteria   * * *";
	Escribir "";
	Escribir "Zonas con servicio disponible para envio...";
	Escribir "";
	Escribir '**************************'
	Escribir '*PAQUETERIA INTERNACIONAL*'
	Escribir '**************************'
	Escribir '****MENU DE LAS ZONAS****'
	Escribir '1.- America del Norte'
	Escribir '2.- America Central'
	Escribir '3.- America del Sur'
	Escribir '4.- Europa'
	Escribir '5.- Asia'
	Escribir ''
	Escribir Sin Saltar 'Ingrese el numero de la zona a la que desea enviar el paquete:'
	Leer NumZona
		Si NumZona >= 1 y NumZona <= 5 Entonces
			Escribir  "Peso del paquete: ---" Sin Saltar;
			Leer PesoPack;
			Si PesoPack<=5000 Entonces
				Segun NumZona  Hacer
					1:  Costo <- PesoPack*11
					2:  Costo <- PesoPack*10
					3:  Costo <- PesoPack*12
					4:  Costo <- PesoPack*24
					5:  Costo <- PesoPack*27
				FinSegun
				Escribir "El costo del envio de su paquete es $" Costo;
			SiNo
				Escribir "Por cuestiones de logistica y seguridad, lamentamos informarle ";
				Escribir "que no es posible enviar su paquete ya que excede el limite de";
				Escribir "peso permitido que es de 5000 gramos";
			FinSi
		SiNo
			Escribir '¡ERROR!, el numero de la Zona que digito no es valido'
		FinSi
	Escribir 'Gracias por usar el programa'
FinAlgoritmo