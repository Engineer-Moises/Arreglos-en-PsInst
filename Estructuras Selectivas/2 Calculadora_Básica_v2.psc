Algoritmo Calculadora_Avanzada
	// Calculadora con estructura selectiva simple
	Escribir "Este es un programa que suma, resta, multiplica y divide dos números";
	Escribir " "
	
	Escribir "Por favor ingresa tus valores :D"
	Escribir "+ = Sumar";
	Escribir "- = Restar";
	Escribir "x = Multiplicar";
	Escribir "/ = Dividir";
	Escribir "NOTA: el segundo número es el denominador";
	Escribir " ";
	
	Escribir "Numero 1"
	Leer Num1
	Escribir "Operador";
	Leer Operador;
	Escribir "Número 2";
	Leer Num2;
	
	Mientras Num2=0 y Operador= "/" Hacer //Estructura que evita una division entre 0 pero deja seguir otras operciones con 0
		Escribir "La división de cualquier número entre 0 no esta definida."
		Escribir "Por favor ingrese un número distinto a 0"
		Leer Num2;
	FinMientras
	
	Rsuma <- Num1+Num2;
	Rresta <- Num1-Num2;
	Rmultiplicacion <- Num1*Num2;
	si Num2 <> 0 Entonces //Evita error de dividir entre 0
		Rdivision <- Num1/Num2;
	FinSi
	
	//Mostrar resultados
	si Operador= "+" Entonces
		Escribir "El resultado de sumar ", Num1," mas ", Num2, " es ", Rsuma;
		Escribir "Gracias ;)";
	FinSi
	si Operador= "-" Entonces
		Escribir "El resultado de restar ", Num1," menos ", Num2, " es ", Rresta;
		Escribir "Gracias ;)";
	FinSi
	si Operador= "x" Entonces
		Escribir "El resultado de multiplicar ", Num1," por ", Num2, " es ", Rmultiplicacion;
		Escribir "Gracias ;)";
	FinSi
	si Operador= "/" Entonces
		Escribir "El resultado de dividir ", Num1," entre ", Num2, " es ", Rdivision;
		Escribir "Gracias ;)";
	FinSi
	Escribir " "
	
	Escribir "Escriba c para reiniciar el programa o s para salir"
	Definir Instruccion Como Caracter
	Leer Instruccion;
	
	si Instruccion = "c" Entonces
		Borrar Pantalla
	FinSi
FinAlgoritmo
