Funcion VerificarCaracter
		Definir caracter Como Car�cter
		
		Escribir "Ingrese un caracter: "
		Leer caracter
		
		Si (caracter >= "a" y caracter <= "z") o (caracter >= "A" y caracter <= "Z") Entonces
			Escribir "El caracter es una letra."
		Sino
			Si caracter = "," o caracter = "." o caracter = ";" o caracter = ":" Entonces
				Escribir "El caracter es un signo de puntuaci�n."
			Sino
				Escribir "El caracter no es una letra ni un signo de puntuaci�n. Es: " + caracter
			Fin Si
		Fin Si
FinFuncion




Funcion VerificarCaracter2
	Definir caracter Como Caracter
	
	Escribir "Ingresa un car�cter: "
	Leer caracter
	
	Si caracter >= '0' Y caracter <= '9' Entonces
		Escribir "El car�cter es un n�mero."
	Sino
		Si caracter == 'a' O caracter == 'e' O caracter == 'i' O caracter == 'o' O caracter == 'u' Entonces
			Escribir "El car�cter es una vocal."
		Sino
			Escribir "El car�cter no es un n�mero ni una vocal."
		FinSi
	FinSi
	
FinFuncion




Funcion CompararNombres
    Definir nombre1, nombre2 Como Cadena
	
    Escribir "Ingresa el primer nombre: "
    Leer nombre1
	
    Escribir "Ingresa el segundo nombre: "
    Leer nombre2
	
    Si nombre1 == nombre2 Entonces
        Escribir "Los nombres son iguales."
    Sino
        Si nombre1 < nombre2 Entonces
            Escribir "El primer nombre es menor que el segundo."
        Sino
            Escribir "El primer nombre es mayor que el segundo."
        FinSi
    FinSi
	
FinFuncion




Funcion CompararNumeros
    Definir numero1, numero2 Como Entero
	
    Escribir "Ingresa el primer n�mero: "
    Leer numero1
	
    Escribir "Ingresa el segundo n�mero: "
    Leer numero2
	
    Si numero1 == numero2 Entonces
        Escribir "Los n�meros son iguales."
    Sino
        Si numero1 < numero2 Entonces
            Escribir "El primer n�mero es menor que el segundo."
        Sino
            Escribir "El primer n�mero es mayor que el segundo."
        FinSi
    FinSi
	
FinFuncion




Funcion EncontrarNumeroMayor
    Definir numero1, numero2, numero3 Como Entero
	
    Escribir "Ingresa el primer n�mero: "
    Leer numero1
	
    Escribir "Ingresa el segundo n�mero: "
    Leer numero2
	
    Escribir "Ingresa el tercer n�mero: "
    Leer numero3
	
    Si numero1 == numero2 Y numero1 == numero3 Entonces
        Escribir "Los tres n�meros son iguales."
    Sino
        Si numero1 >= numero2 Y numero1 >= numero3 Entonces
            Escribir "El primer n�mero es el mayor."
        Sino
            Si numero2 >= numero1 Y numero2 >= numero3 Entonces
                Escribir "El segundo n�mero es el mayor."
            Sino
                Escribir "El tercer n�mero es el mayor."
            FinSi
        FinSi
    FinSi
	
FinFuncion




Funcion DeterminarSigno
    Definir numero Como Real
	
    Escribir "Ingresa un n�mero: "
    Leer numero
	
    Si numero == 0 Entonces
        Escribir "El n�mero es neutro."
    Sino
        Si numero > 0 Entonces
            Escribir "El n�mero es positivo."
        Sino
            Escribir "El n�mero es negativo."
        FinSi
    FinSi
	
FinFuncion




Funcion CalcularCostoLapices
    Definir cantidad, costo_unitario, costo_total Como Real
	
    Escribir "Ingrese la cantidad de l�pices: "
    Leer cantidad
	
    Si cantidad > 1000 Entonces
        costo_unitario = 1
    Sino
        costo_unitario = 1.50
    FinSi
	
    costo_total = cantidad * costo_unitario
	
    Escribir "El costo total de", cantidad, "l�pices es de: ", costo_total, " euros."
	
FinFuncion







Algoritmo ejercicios
	VerificarCaracter()
	VerificarCaracter2()
	CompararNombres()
	CompararNumeros()
	EncontrarNumeroMayor()
	DeterminarSigno()
	CalcularCostoLapices()
FinAlgoritmo
	