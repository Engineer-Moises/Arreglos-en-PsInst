Algoritmo Numero_Positivo_Negativo
	Definir Num Como Real
	Escribir "Escribe cualquier numero para saber si es positivo o negativo";
	Leer Num;
	Mientras Num = 0 Hacer
		Escribir "El cero es un numero neutral, NO es POSITIVO, ni NEGATIVO";
		Escribir "Por favor ingrese un numero diferente de 0";
		Leer Num;
	FinMientras
	Si Num > 0 Entonces
		Escribir "El numero ",Num," es POSITIVO";
	SiNo
		Escribir "El numero ",Num," es NEGATIVO";
	FinSi
FinAlgoritmo
