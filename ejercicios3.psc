Funcion  CalcularPrecioVenta
    Definir clave, costo_materia_prima, costo_mano_obra, costo_gastos_fabricacion, costo_produccion, precio_venta Como Real
	
    Escribir "Ingrese la clave del producto (1, 2, 3, 4, 5 o 6): "
    Leer clave
	
    Escribir "Ingrese el costo de la materia prima: "
    Leer costo_materia_prima
	
    Si clave == 1 O clave == 5 Entonces
        costo_mano_obra = 0.80 * costo_materia_prima
    Sino
        Si clave == 2 O clave == 6 Entonces
            costo_mano_obra = 0.85 * costo_materia_prima
        Sino
            costo_mano_obra = 0.75 * costo_materia_prima
        FinSi
    FinSi
	
    Si clave == 2 O clave == 5 Entonces
        costo_gastos_fabricacion = 0.30 * costo_materia_prima
    Sino
        Si clave == 3 O clave == 6 Entonces
            costo_gastos_fabricacion = 0.35 * costo_materia_prima
        Sino
            costo_gastos_fabricacion = 0.28 * costo_materia_prima
        FinSi
    FinSi
	
    costo_produccion = costo_materia_prima + costo_mano_obra + costo_gastos_fabricacion
    precio_venta = costo_produccion + 0.45 * costo_produccion
	
    Escribir "El precio de venta del producto con clave ", clave, " es de $", precio_venta
	
FinFuncion




Funcion  CalcularTarjetaCredito
	Escribir "Ingrese el tipo de tarjeta (1, 2, 3 u otro): "
	Leer tipo_tarjeta
	
	Si tipo_tarjeta == 1 Entonces
		aumento = 0.25
	Sino
		Si tipo_tarjeta == 2 Entonces
			aumento = 0.35
		Sino
			Si tipo_tarjeta == 3 Entonces
				aumento = 0.40
			Sino
				aumento = 0.50
			FinSi
		FinSi
	FinSi
	
	Escribir "Ingrese el límite de crédito actual: "
	Leer limite_actual
	
	nuevo_limite = limite_actual * (1 + aumento)
	
	Escribir "El nuevo límite de crédito es: ", nuevo_limite
	
FinFuncion




Funcion  EstadisticaPesosAlumnos
    Definir peso, contador_menos_40, contador_40_50, contador_50_60, contador_mas_60, total_pesos_menos_40, total_pesos_40_50, total_pesos_50_60, total_pesos_mas_60 Como Real
	
    contador_menos_40 = 0
    contador_40_50 = 0
    contador_50_60 = 0
    contador_mas_60 = 0
    total_pesos_menos_40 = 0
    total_pesos_40_50 = 0
    total_pesos_50_60 = 0
    total_pesos_mas_60 = 0
	
    Escribir "Ingresa el peso de los alumnos (ingresa 0 para terminar): "
    Leer peso
	
    Mientras peso <> 0 Hacer
        Si peso < 40 Entonces
            contador_menos_40 = contador_menos_40 + 1
            total_pesos_menos_40 = total_pesos_menos_40 + peso
        Sino
            Si peso >= 40 Y peso < 50 Entonces
                contador_40_50 = contador_40_50 + 1
                total_pesos_40_50 = total_pesos_40_50 + peso
            Sino
                Si peso >= 50 Y peso < 60 Entonces
                    contador_50_60 = contador_50_60 + 1
                    total_pesos_50_60 = total_pesos_50_60 + peso
                Sino
                    contador_mas_60 = contador_mas_60 + 1
                    total_pesos_mas_60 = total_pesos_mas_60 + peso
                FinSi
            FinSi
        FinSi
		
        Escribir "Ingresa el peso de otro alumno (ingresa 0 para terminar): "
        Leer peso
    FinMientras
	
    Si contador_menos_40 > 0 Entonces
        promedio_menos_40 = total_pesos_menos_40 / contador_menos_40
    Sino
        promedio_menos_40 = 0
    FinSi
	
    Si contador_40_50 > 0 Entonces
        promedio_40_50 = total_pesos_40_50 / contador_40_50
    Sino
        promedio_40_50 = 0
    FinSi
	
    Si contador_50_60 > 0 Entonces
        promedio_50_60 = total_pesos_50_60 / contador_50_60
    Sino
        promedio_50_60 = 0
    FinSi
	
    Si contador_mas_60 > 0 Entonces
        promedio_mas_60 = total_pesos_mas_60 / contador_mas_60
    Sino
        promedio_mas_60 = 0
    FinSi
	
    Escribir "Alumnos con menos de 40 kg: ", contador_menos_40, " (Promedio: ", promedio_menos_40, " kg)"
    Escribir "Alumnos entre 40 y 50 kg: ", contador_40_50, " (Promedio: ", promedio_40_50, " kg)"
    Escribir "Alumnos entre 50 y 60 kg: ", contador_50_60, " (Promedio: ", promedio_50_60, " kg)"
    Escribir "Alumnos con más de 60 kg: ", contador_mas_60, " (Promedio: ", promedio_mas_60, " kg)"
	
FinFuncion



Funcion VerificarCondiciones
    Definir numero1, numero2, numero3, numero4 Como Entero
	
    Escribir "Ingrese el primer número: "
    Leer numero1
	
    Escribir "Ingrese el segundo número: "
    Leer numero2
	
    Escribir "Ingrese el tercer número: "
    Leer numero3
	
    Escribir "Ingrese el cuarto número: "
    Leer numero4
	
    Si (numero1 * 2) == numero2 Entonces
        Escribir "El primer número es la mitad del segundo número."
    Sino
        Escribir "El primer número NO es la mitad del segundo número."
    FinSi
	
    Si numero4 % numero3 == 0 Entonces
        Escribir "El tercer número es divisor del cuarto número."
    Sino
        Escribir "El tercer número NO es divisor del cuarto número."
    FinSi
	
FinFuncion




Funcion  DiasDeLaSemana
    Definir numero Como Entero
	
    Escribir "Ingresa un número del 1 al 7: "
    Leer numero
	
    Segun numero Hacer
        Caso 1:
            Escribir "Lunes"
        Caso 2:
            Escribir "Martes"
        Caso 3:
            Escribir "Miércoles"
        Caso 4:
            Escribir "Jueves"
        Caso 5:
            Escribir "Viernes"
        Caso 6:
            Escribir "Sábado"
        Caso 7:
            Escribir "Domingo"
        De Otro Modo:
            Escribir "Número fuera de rango. Debe ser del 1 al 7."
    FinSegun
	
FinFuncion




Funcion  MesesDelAño
    Definir numero Como Entero
	
    Escribir "Ingresa un número del 1 al 12: "
    Leer numero
	
    Segun numero Hacer
        Caso 1:
            Escribir "Enero"
        Caso 2:
            Escribir "Febrero"
        Caso 3:
            Escribir "Marzo"
        Caso 4:
            Escribir "Abril"
        Caso 5:
            Escribir "Mayo"
        Caso 6:
            Escribir "Junio"
        Caso 7:
            Escribir "Julio"
        Caso 8:
            Escribir "Agosto"
        Caso 9:
            Escribir "Septiembre"
        Caso 10:
            Escribir "Octubre"
        Caso 11:
            Escribir "Noviembre"
        Caso 12:
            Escribir "Diciembre"
        De Otro Modo:
            Escribir "Número fuera de rango. Debe ser del 1 al 12."
    FinSegun
	
FinFuncion




Funcion EstaturaPromedio
    Definir estatura, total_estaturas, contador Como Real
	
    total_estaturas = 0
    contador = 0
	
    Escribir "Ingresa la estatura (en metros) de cada persona (0 para finalizar):"
	
    Repetir
        Escribir "Estatura de la persona ", contador + 1, ": "
        Leer estatura
		
        Si estatura > 0 Entonces
            total_estaturas = total_estaturas + estatura
            contador = contador + 1
        FinSi
		
    Hasta Que estatura <= 0
	
    Si contador > 0 Entonces
        promedio_estaturas = total_estaturas / contador
        Escribir "El promedio de estaturas es: ", promedio_estaturas, " metros."
    Sino
        Escribir "No se ingresaron estaturas válidas."
    FinSi
	
FinFuncion









Algoritmo ejercicios
	CalcularPrecioVenta()
	CalcularTarjetaCredito()
	EstadisticaPesosAlumnos()
	VerificarCondiciones()
	DiasDeLaSemana()
	MesesDelAño()
	EstaturaPromedio()
FinAlgoritmo
	