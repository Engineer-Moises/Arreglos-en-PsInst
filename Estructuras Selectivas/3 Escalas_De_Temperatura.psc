Algoritmo Escalas_De_Temperatura
	//Algoritmo que maneja distintas escalas de temperatura
	
	Escribir " __________________________________"
	Escribir "|    Convertidor de Temperatura    |"
	Escribir " ----------------------------------"
	
	Escribir "Indica tu escala"
	Escribir " "
	Escribir "c -> Celsius        f -> Fahrentheit"
	Escribir "k -> Kelvin         r -> Rankine"
	Escribir "re -> Reaumur       ro -> Romer"
	Escribir "n -> Newton         d -> Delisle"
	Escribir " "
	Leer Esca
	Escribir "Ingresa el valor:"
	Leer Num1
	Escribir "Convertir a:"
	Leer Esca2
	si Esca2=Esca Entonces
		Escribir "Por favor ingrese una escala diferente"
		Leer Esca2
	FinSi
	
	Segun Esca Hacer
		"c":
			Segun Esca2 Hacer
				"f":
					CF <- (Num1*1.8)+32
					Escribir Num1," grados celsius es igual a ", CF, " grados fahrentheit"
				"k":
					CK <- Num1+273.15
					Escribir Num1," grados celsius es igual a ", CK, " grados kelvin"
				"r":
					CR <- (Num1+273.15)*1.8
					Escribir Num1, " grados celsius es igual a ", CR, " grados rankine"
				"re":
					CRE <- Num1/1.25
					Escribir Num1, " grados celsius es igual a ", CRE, " grados reaumur"
				"ro":
					CRO <- (Num1*0.52500)+7.5
					Escribir Num1, " grados celsius es igual a ", CRO, " grados romer"
				"n":
					CN <- Num1*0.33000
					Escribir Num1, " grados celsius es igual a ", CN, " grados Newton"
				"d":
					CD <- (100-Num1)*3/2
					Escribir Num1, " grados celsius es igual a ", CD, " grados delisle"
					
			FinSegun
		"f":
			Segun Esca2 Hacer
				"c":
					FC <- (Num1-32)*5/9
					Escribir Num1, " grados fahrentheit es igual a ", FC, " grados celsius"
				"k":
					FK <- (Num1-32)*5/9+273.15
					Escribir Num1, " grados fahrentheit es igual a ", FK, " grados kelvin"
				"r":
					FR <- Num1+459.67
					Escribir Num1, " grados fahrentheit es igual a ", FR, " grados rankine"
				"re":
					FRE <- (Num1-32)*0.44444
					Escribir Num1, " grados fahrentheit es igual a ", FRE, " grados reaumur"
				"ro":
					FRO <- (Num1-32)*7/24+7.5
					Escribir Num1, " grados fahrentheit es igual a ", FRO, " grados romer"
				"n":
					FN <- (Num1-32)*1.8333
					Escribir Num1, " grados fahrentheit es igual a ", FN, " grados newton"
				"d":
					FD <- (212-Num1)*5/6
					Escribir Num1, " grados fahrentheit es igual a ", FD, " grados delisle"
			FinSegun
		"k":
			Segun Esca2 Hacer
				"c":
					KC <- Num1-273.15
					Escribir Num1, " grados kelvin es igual a ", KC, " grados celsius"
				"f":
					KF <- (Num1-273.15)*9/5+32
					Escribir Num1, " grados kelvin es igual a ", KF, " grados fahrentheit"
				"r":
					KR <- Num1*9/5
					Escribir Num1, " grados kelvin es igual a ", KR, " grados rankine"
				"re":
					KRE <- (Num1-273.15)*0.80000
					Escribir Num1, " grados kelvin es igual a ", KRE, " grados reaumur"
				"ro":
					KRO <- (Num1-272.15)*0.52500+7.5
					Escribir Num1, " grados kelvin es igual a ", KRO, " grados romer"
				"n":
					KN <- (Num1-273.15)*0.33000
					Escribir Num1, " grados kelvin es igual a ", KN, " grados newton"
				"d":
					KD <- (Num1-273.15)*1.5000-100
					Escribir Num1, " grados kelvin es igual a ", KD, " grados delisle"
			FinSegun
		"r":
			Segun Esca2 Hacer
				"c":
					RCE <- (Num1-491.67)*5/9
					Escribir Num1, " grados rankine es igual a ", RCE, " grados celsius"
				"f":
					RF <- Num1-459.67
					Escribir Num1, " grados rankine es igual a ", RF, " grados fahrentheit"
				"k":
					RK <- Num1*5/9
					Escribir Num1, " grados rankine es igual a ", RK, " grados kelvin"
				"re":
					RRE <- (Num1-491.67)*0.44444
					Escribir Num1, " grados rankine es igual a ", RRE, " grados reaumur"
				"ro":
					RRO <- (Num1-491.67)*0.29167+7.5
					Escribir Num1, " grados rankine es igual a ", RRO, " grados romer"
				"n":
					RN <- (Num1-491.67)*0.18333
					Escribir Num1, " grados rankine es igual a ", RN, " grados newton"
				"d":
					RD <- (Num1-491.67)*0.83333-100
					Escribir Num1, " grados rankine es igual a ", RD, " grados delisle"
			FinSegun
		"re":
			Segun Esca2 Hacer
				"c":
					REC <- Num1/0.80000
					Escribir Num1, " grados reaumur es igual a ", REC, " grados celsius"
				"f":
					REF <- Num1*2.2500+32
					Escribir Num1, " grados reaumur es igual a ", REF, " grados fahrentheit"
				"k":
					REK <- Num1/4+273.15
					Escribir Num1, " grados reaumur es igual a ", REK, " grados kelvin"
				"r":
					RER <- Num1*2.2500+491.67
					Escribir Num1, " grados reaumur es igual a ", RER, " grados rankine"
				"ro":
					RERO <- Num1*0.65625+7.5
					Escribir Num1, " grados reaumur es igual a ", RERO, " grados romer"
				"n":
					REN <- Num1*0.41250
					Escribir Num1, " grados reaumur es igual a ", REN, " grados newton"
				"d":
					RED <- Num1*1.8750-100
					Escribir Num1, " grados reaumur es igual a ", RED, " grados delisle"
			FinSegun
		"ro":
			Segun Esca2 Hacer
				"c":
					ROC <- (Num1-7.5)/0.52500
					Escribir Num1, " grados romer es igual a ", ROC, " grados celsius"
				"f":
					ROF <- (Num1-7.5)*3.4286+32
					Escribir Num1, " grados romer es igual a ", ROF, " grados fahrentheit"
				"k":
					ROK <- (Num1-7.5)/0.52500+273.15
					Escribir Num1, " grados romer es igual a ", ROK, " grados kelvin"
				"r":
					ROR <- (Num1-7.5)*3.4286+491.67
					Escribir Num1, " grados romer es igual a ", ROR, " grados rankine"
				"re":
					RORE <- (Num1-7.5)*1.5238
					Escribir Num1, " grados romer es igual a ", RORE, " grados reaumur"
				"n":
					RON <- (Num1-7.5)*22/35
					Escribir Num1, " grados romer es igual a ", RON, " grados celsius"
				"d":
					ROD <- (Num1-7.5)*2.8571-100
					Escribir Num1, " grados romer es igual a ", ROD, " grados delisle"
			FinSegun
		"n":
			Segun Esca2 Hacer
				"c":
					NC <- Num1/0.33000
					Escribir Num1, " grados newton es igual a ", NC, " grados celsius"
				"f":
					NF <- Num1*5.4545+32
					Escribir Num1, " grados newton es igual a ", NF, " grados fahrentheit"
				"k":
					NK <- Num1/0.33000+273.15
					Escribir Num1, " grados newton es igual a ", NK, " grados kelvin"
				"r":
					NR <- Num1*5.4545+491.67
					Escribir Num1, " grados newton es igual a ", NR, " grados rankine"
				"re":
					NRE <- Num1*2.4242
					Escribir Num1, " grados newton es igual a ", NRE, " grados reaumur"
				"ro":
					NRO <- Num1*1.5909+7.5
					Escribir Num1, " grados newton es igual a ", NRO, " grados romer"
				"d":
					ND <- Num1*4.5455-100
					Escribir Num1, " grados newton es igual a ", ND, " grados delisle"
			FinSegun
		"d":
			Segun Esca2 Hacer
				"c":
					DC <- (Num1+100)/1.50000
					Escribir Num1, " grados delisle es igual a ", DC, " grados celsius"
				"f":
					DF <- (Num1+100)*1.2000+32
					Escribir Num1, " grados delisle es igual a ", DF, " grados fahrentheit"
				"k":
					DK <- (Num1+100)/1.50000+273.15
					Escribir Num1, " grados delisle es igual a ", DK, " grados kelvin"
				"r":
					DR <- (Num1+100)*1.2000+491.67
					Escribir Num1, " grados delisle es igual a ", DR, " grados rankine"
				"re":
					DRE <- (Num1+100)*0.53333
					Escribir Num1, " grados delisle es igual a ", DRE, " grados reaumur"
				"ro":
					DRO <- (Num1+100)*0.35000+7.5
					Escribir Num1, " grados delisle es igual a ", DRO, " grados romer"
				"n":
					DN <- (Num1+100)*22000
					Escribir Num1, " grados delisle es igual a ", DN, " grados newton"
			FinSegun
	FinSegun
FinAlgoritmo
