Algoritmo Mayor_de_3_Numeros
	// Se requiere determinar cuál de tres cantidades proporcionadas es la mayor.
	//Realizar su respectivo algoritmo y representarlo mediante un diagrama de flujo
	//pseudocódigo y diagrama N/S.
	Definir Num1,Num2,Num3 Como Real
	Escribir "Ingresa 3 numeros:)"
	Escribir "A)",Sin Saltar;
	Leer Num1;
	Escribir "B)",Sin Saltar;
	Leer Num2;
	Escribir "C)",Sin Saltar;
	Leer Num3;
	Si Num1 = Num2 y Num1 = Num3 Entonces
		Escribir "Todos los numeros son iguales";
	SiNo
		Si Num1 > Num2 Entonces
			Si Num1 >  Num3 Entonces
				Escribir "El numero mayor es ",Num1," que esta ubicado en el inciso A";
			SiNo
				Escribir "El numero mayor es ",Num3," que esta ubicado en el inciso C";
			FinSi
		SiNo
			Si Num2 > Num3 Entonces
				Escribir "El numero mayor es ",Num2," que esta ubicado en el inciso B";
			SiNo
				Escribir "El numero mayor es ",Num3," que esta ubicado en el inciso C";
			FinSi
		FinSi
	FinSi
FinAlgoritmo