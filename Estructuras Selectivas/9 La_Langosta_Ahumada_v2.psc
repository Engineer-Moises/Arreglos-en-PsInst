Algoritmo La_langosta_ahumada
    //PINALES. EJERCICIO 3.6 "La langosta ahumada" Es una empresa dedicada a ofrecer banquetes; sus tarifas son las siguientes:
    //El costo de platillo por persona es de $95.00.
    //Pero si el número de personas es mayor a 200 pero menor o igual a 300, el costo es de $85.00.
    //Para más de 300 personas el costo por platillo es de $75.00.
    //Se requiere un algoritmo que ayude a determinar el presupuesto que se debe presentar a los clientes que deseen realizar un evento.
    Definir Num_Personas Como Entero
    Definir Presupuesto, Desc Como Real
    Escribir "************** ´LA LANGOSTA AHUMADA´ **************"
    Escribir ""
    Escribir "Programa que realiza el presupuesto de un banquete"
    Escribir ""
    Escribir Sin Saltar "¿Para cuantas personas deseas realizar tu evento? ";
    Leer Num_Personas;
    Si Num_Personas>200 Y Num_Personas<=300 Entonces
        Presupuesto <- Num_Personas * 85;
    SiNo
        Si Num_Personas>300 Entonces
            Presupuesto <- Num_Personas * 75;
        SiNo
            Presupuesto <- Num_Personas * 95;
        FinSi
    FinSi
	si Num_Personas >200 Entonces
		Desc <- (Num_Personas*95)-(Num_Personas*85)
	FinSi
	si Num_Personas > 300 Entonces
		Desc <- (Num_Personas*95)-(Num_Personas*75)
	FinSi
	si Num_Personas <=200 Entonces
		Escribir "El Presupuesto del evento para ", Num_Personas," personas es de $", Presupuesto;
	SiNo
		Escribir "El Presupuesto del evento para ", Num_Personas," personas es de $", Presupuesto,". Usted ahorras $", Desc;
	FinSi
FinAlgoritmo