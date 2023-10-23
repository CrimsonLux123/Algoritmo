Funcion PrecioPasajes
    Definir n, recorrido, precio, pasajes_hasta_100km, pasajes_mas_de_100km Como Entero
    Definir promedio_hasta_100km, promedio_mas_de_100km Como Real
	
    pasajes_hasta_100km = 0
    pasajes_mas_de_100km = 0
    promedio_hasta_100km = 0
    promedio_mas_de_100km = 0
	
    Escribir "Ingresa la cantidad de pasajes: "
    Leer n
	
    Para i = 1 Hasta n Hacer
        Escribir "Recorrido en kil�metros del pasaje ", i, ": "
        Leer recorrido
		
        Si recorrido <= 100 Entonces
            precio = recorrido
            pasajes_hasta_100km = pasajes_hasta_100km + 1
            promedio_hasta_100km = promedio_hasta_100km + precio
        Sino
            precio = recorrido + (recorrido * 0.20)
            pasajes_mas_de_100km = pasajes_mas_de_100km + 1
            promedio_mas_de_100km = promedio_mas_de_100km + precio
        FinSi
		
        Escribir "Precio del pasaje ", i, ": $", precio
    FinPara
	
    Si pasajes_hasta_100km > 0 Entonces
        promedio_hasta_100km = promedio_hasta_100km / pasajes_hasta_100km
    FinSi
	
    Si pasajes_mas_de_100km > 0 Entonces
        promedio_mas_de_100km = promedio_mas_de_100km / pasajes_mas_de_100km
    FinSi
	
    Escribir "Promedio de pasajes hasta 100 km: $", promedio_hasta_100km
    Escribir "Promedio de pasajes m�s de 100 km: $", promedio_mas_de_100km
    Escribir "Cantidad de pasajes hasta 100 km: ", pasajes_hasta_100km
    Escribir "Cantidad de pasajes m�s de 100 km: ", pasajes_mas_de_100km
	
FinFuncion




Funcion PromedioValoresDistintosDeCero
    Definir numero, cantidad, suma, promedio Como Real
	
    cantidad = 0
    suma = 0
	
    Escribir "Ingresa una serie de n�meros distintos de cero (termina con un valor cero que no se presentar�)."
	
    Leer numero
	
    Mientras numero <> 0 Hacer
        cantidad = cantidad + 1
        suma = suma + numero
        Escribir "N�mero ingresado: ", numero
        Leer numero
    FinMientras
	
    Si cantidad > 0 Entonces
        promedio = suma / cantidad
        Escribir "Cantidad de valores distintos de cero: ", cantidad
        Escribir "Promedio de los valores distintos de cero: ", promedio
    Sino
        Escribir "No se ingresaron valores distintos de cero."
    FinSi
	
FinFuncion




Funcion MultiplosDeTres
    Definir numero, cantidad, total Como Entero
	
    cantidad = 0
    total = 0
	
    Escribir "Ingresa una serie de n�meros positivos (termina con un valor negativo que no se presentar�)."
	
    Leer numero
	
    Mientras numero >= 0 Hacer
        Si numero MOD 3 = 0 Entonces
            cantidad = cantidad + 1
            total = total + numero
        FinSi
        Escribir "N�mero ingresado: ", numero
        Leer numero
    FinMientras
	
    Si cantidad > 0 Entonces
        Escribir "Cantidad de n�meros positivos m�ltiplos de 3: ", cantidad
        Escribir "Total de n�meros positivos m�ltiplos de 3: ", total
    Sino
        Escribir "No se ingresaron n�meros positivos m�ltiplos de 3."
    FinSi
	
FinFuncion




Funcion CalcularCostoEnvio
    Definir peso_paquete como Real
    Definir zona_destino como Entero
    Definir costo_envio como Real
	
    Escribir "Ingrese el peso del paquete en kg:"
    Leer peso_paquete
	
    // Verificar si el peso del paquete es superior a 5kg
    Si peso_paquete > 5 Entonces
        Escribir "El paquete excede el peso m�ximo permitido. No se puede enviar."
    Sino
        Escribir "Ingrese la zona de destino (1: Am�rica del Norte, 2: Am�rica Central, 3: Am�rica del Sur, 4: Europa, 5: Asia):"
        Leer zona_destino
		
        // Calcular el costo de env�o seg�n la zona de destino
        Segun zona_destino Hacer
            Caso 1:
                costo_envio <- peso_paquete * 11.00
            Caso 2:
                costo_envio <- peso_paquete * 10.00
            Caso 3:
                costo_envio <- peso_paquete * 12.00
            Caso 4:
                costo_envio <- peso_paquete * 24.00
            Caso 5:
                costo_envio <- peso_paquete * 27.00
            De Otro Modo:
                Escribir "Zona de destino inv�lida. No se puede calcular el costo de env�o."
        Fin Segun
		
        Si costo_envio <> 0 Entonces
            Escribir "El costo de env�o es: ", costo_envio
        Fin Si
    Fin Si
	
FinFuncion



Funcion VerificarDiasSemana
    Definir num1, num2, num3 como Entero
    
    Escribir "Ingrese el n�mero 1:"
    Leer num1
    
    Escribir "Ingrese el n�mero 2:"
    Leer num2
    
    Escribir "Ingrese el n�mero 3:"
    Leer num3
    
    Si num1 = 1 Entonces
        Escribir "El n�mero 1 es el d�a lunes"
    Sino Si num1 = 2 Entonces
			Escribir "El n�mero 1 es el d�a martes"
		Sino Si num1 = 3 Entonces
				Escribir "El n�mero 1 es el d�a mi�rcoles"
			Sino Si num1 = 4 Entonces
					Escribir "El n�mero 1 es el d�a jueves"
				Sino Si num1 = 5 Entonces
						Escribir "El n�mero 1 es el d�a viernes"
					Sino Si num1 = 6 Entonces
							Escribir "El n�mero 1 es el d�a s�bado"
						Sino Si num1 = 7 Entonces
								Escribir "El n�mero 1 es el d�a domingo"
							Sino
								Escribir "El n�mero 1 es un d�a inv�lido"
							Fin Si
							
							Si num2 = 1 Entonces
								Escribir "El n�mero 2 es el d�a lunes"
							Sino Si num2 = 2 Entonces
									Escribir "El n�mero 2 es el d�a martes"
								Sino Si num2 = 3 Entonces
										Escribir "El n�mero 2 es el d�a mi�rcoles"
									Sino Si num2 = 4 Entonces
											Escribir "El n�mero 2 es el d�a jueves"
										Sino Si num2 = 5 Entonces
												Escribir "El n�mero 2 es el d�a viernes"
											Sino Si num2 = 6 Entonces
													Escribir "El n�mero 2 es el d�a s�bado"
												Sino Si num2 = 7 Entonces
														Escribir "El n�mero 2 es el d�a domingo"
													Sino
														Escribir "El n�mero 2 es un d�a inv�lido"
													Fin Si
													
													Si num3 = 1 Entonces
														Escribir "El n�mero 3 es el d�a lunes"
													Sino Si num3 = 2 Entonces
															Escribir "El n�mero 3 es el d�a martes"
														Sino Si num3 = 3 Entonces
																Escribir "El n�mero 3 es el d�a mi�rcoles"
															Sino Si num3 = 4 Entonces
																	Escribir "El n�mero 3 es el d�a jueves"
																Sino Si num3 = 5 Entonces
																		Escribir "El n�mero 3 es el d�a viernes"
																	Sino Si num3 = 6 Entonces
																			Escribir "El n�mero 3 es el d�a s�bado"
																		Sino Si num3 = 7 Entonces
																				Escribir "El n�mero 3 es el d�a domingo"
																			Sino
																				Escribir "El n�mero 3 es un d�a inv�lido"
																			Fin Si
																		finsi 
																	finsi 
																FinSi
															FinSi
														FinSi
													finsi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
finsi
FinSi
FinSi
FinSi
FinSi
finsi
finsi
FinFuncion


Algoritmo ejercicios
	PrecioPasajes()
	PromedioValoresDistintosDeCero()
	MultiplosDeTres()
	CalcularCostoEnvio()
	VerificarDiasSemana()
	FinAlgoritmo
	