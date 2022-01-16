Algoritmo Extraer_Info_CURP
	//Realizar un algoritma que lea una CURP y extraiga los siguiente:
	//Fecha de Nacimiento, lugar de nacimiento, sexo y edad.
	//HECM030425HTCRRSA9
	
	Definir Curp, Sexo, Entidad Como Caracter
	Definir AñoNac, MesNac, DiaNac Como Caracter
	Definir Edad, LongCurp Como Entero
	
	Escribir "¿QUE DICE TU CURP HACER DE TI?"
	Escribir "******************************"
	Escribir "Tu CURP puede decir mucho de Tí"
	Escribir ""
	Escribir "Ingrese los datos que se solicitan"
	Escribir "Nombre: ", Sin Saltar;
	Leer Nombre
	Escribir "Primer Apellido: ", Sin Saltar;
	Leer Apellido1
	Escribir "Segundo Apellido: ", Sin Saltar;
	Leer Apellido2
	Escribir "CURP: ", Sin Saltar;
	Repetir
		Leer Curp
		LongCurp <- Longitud(Curp)
		Si LongCurp <> 18 Entonces
			Escribir ""
			Escribir "Su CURP debe de contar con 18 caracteres"
			Escribir "Por favor ingresela de nuevo"
			LongCurp <- Longitud(Curp)
		FinSi
	Hasta Que LongCurp = 18
	
	Curp <- Mayusculas(Curp)
	AñoNac <- Subcadena(Curp,5,6)
	MesNac <- Subcadena(Curp,7,8)
	DiaNac <- Subcadena(Curp,9,10)
	Sexo <- Subcadena(Curp,11,11)
	Entidad <- Subcadena(Curp,12,13)
	
	Si AñoNac > "21" Entonces
		AñoNac <- (Concatenar("19",AñoNac))
	SiNo
		Si AñoNac <= "21" Entonces
			AñoNac <- (Concatenar("20",AñoNac))
		FinSi
	FinSi
	
	Segun MesNac Hacer
		"01":
			MesNac <- "Enero"
		"02":
			MesNac <- "Febrero"
		"03":
			MesNac <- "Marzo"
		"04":
			MesNac <- "Abril"
		"05":
			MesNac <- "Mayo"
		"06":
			MesNac <- "Junio"
		"07":
			MesNac <- "Julio"
		"08":
			MesNac <- "Agosto"
		"09":
			MesNac <- "Septiembre"
		"10":
			MesNac <- "Octubre"
		"11":
			MesNac <- "Noviembre"
		"12":
			MesNac <- "Diciembre"
	FinSegun
	
	Si Sexo = "H" Entonces
		Sexo <- "hombre nacido"
	SiNo
		Si Sexo = "M"
			Sexo <- "mujer nacida"
		FinSi
	FinSi
	
	Segun Entidad Hacer
		"AS":Entidad <- "Aguascalientes"
		"BC":Entidad <- "Baja California"
		"BS":Entidad <- "Baja California Sur"
		"CC":Entidad <- "Campeche"
		"CL":Entidad <- "Coahuila"
		"CM":Entidad <- "Colima"
		"CS":Entidad <- "Chiapas"
		"CH":Entidad <- "Chihuahua"
		"DF":Entidad <- "Ciudad de México"
		"DG":Entidad <- "Durango"
		"GT":Entidad <- "Guanajuato"
		"GR":Entidad <- "Guerrero"
		"HG":Entidad <- "Hidalgo"
		"JC":Entidad <- "Jalisco"
		"MC":Entidad <- "Estado de México"
		"MN":Entidad <- "Michoacan"
		"MS":Entidad <- "Morelos"
		"NT":Entidad <- "Nayarit"
		"NL":Entidad <- "Nuevo León"
		"OC":Entidad <- "Oaxaca"
		"PL":Entidad <- "Puebla"
		"QT":Entidad <- "Querétaro"
		"QR":Entidad <- "Quintana Roo"
		"SP":Entidad <- "San Luis Potosí"
		"SL":Entidad <- "Sinaloa"
		"SR":Entidad <- "Sonora"
		"TC":Entidad <- "Tabasco"
		"TS":Entidad <- "Tamaulipas"
		"TL":Entidad <- "Tlaxcala"
		"VZ":Entidad <- "Veracruz"
		"YN":Entidad <- "Yucatán"
		"ZS":Entidad <- "Zacatecas"
		"NE":Entidad <- "Nacido en el Extranjero"
	FinSegun
	
	Si AñoNac > "21" Entonces
		Edad <- (2021 - ConvertirANumero(AñoNac))
	SiNo
		Si AñoNac <= "21" Entonces
			Edad <- (2021 - ConvertirANumero(AñoNac))
		FinSi
	FinSi
	
	Escribir ""
	Escribir "Tu eres ",Sexo," el ",DiaNac," de ",MesNac
	Escribir "de ",AñoNac," en ",Entidad,"."
	Escribir "Te llamas ", Nombre," ",Apellido1," ",Apellido2
	Escribir "y tienes ",Edad," años."
FinAlgoritmo