	Algoritmo Calculadora_Basica
	//Algorito que lee 2 numeros y realiza las operaciones de "+", "-", "*" y "/"
	
	Escribir "Este es un programa que suma, resta, multiplica y divide";
	Escribir "Por favor introduce un n�mero";
	Leer Num1
	Escribir "Ingresa otro n�mero :)"
	Leer Num2
	
	//Operaciones
	Rsuma <- Num1+Num2
	Rresta <- Num1-Num2
	Rmultiplicacion <- Num1*Num2
	Rdivision <- Num1/Num2
	
	//Decision del usuario
	Escribir "�Qu� quieres hacer:)";
	Escribir "1  Suma";
	Escribir "2  Resta";
	Escribir "3  Multiplicaci�n";
	Escribir "4  Divisi�n";
	
	//Operaciones Basicas
	Leer Respuesta;
	si Respuesta=1 Entonces
		Escribir "El resultado de sumar ", Num1," mas ", Num2, " es ", Rsuma;
		Escribir "Gracias ;)";
	FinSi
	si Respuesta=2 Entonces
		Escribir "El resultado de restar ", Num1," menos ", Num2, " es ", Rresta;
		Escribir "Gracias ;)";
	FinSi
	si Respuesta=3 Entonces
		Escribir "El resultado de multiplicar ", Num1," por ", Num2, " es ", Rmultiplicacion;
		Escribir "Gracias ;)";
	FinSi
	si Respuesta=4 Entonces
		Escribir "El resultado de dividir ", Num1," entre ", Num2, " es ", Rdivision;
		Escribir "Gracias ;)";
	FinSi
	
FinAlgoritmo
