Funcion NumerosPares
    Definir numero_pares Como Entero

    Para numero_pares = 0 Hasta 100 Con Paso 2 Hacer
        Escribir numero_pares
    FinPara

FinFuncion



Funcion  SumaSucesiva
    Definir suma, numero, contador Como Real
	
    suma = 0
    contador = 0
	
    Escribir "Ingresa 10 números para realizar la suma sucesiva:"
	
    Mientras contador < 10 Hacer
        Escribir "Número ", contador + 1, ": "
        Leer numero
        suma = suma + numero
        contador = contador + 1
    FinMientras
	
    Escribir "La suma acumulada de los 10 números ingresados es: ", suma
	
FinFuncion



Funcion EdadPromedio
Definir suma_edades, contador, N Como Entero
    Definir edad Como Real
	
    Escribir "Ingresa la cantidad de alumnos (N): "
    Leer N
	
    suma_edades = 0
    contador = 0
	
    Mientras contador < N Hacer
        Escribir "Ingresa la edad del alumno ", contador + 1, ": "
        Leer edad
        suma_edades = suma_edades + edad
        contador = contador + 1
    FinMientras
	
    Si N > 0 Entonces
        promedio_edades = suma_edades / N
        Escribir "La edad promedio de los ", N, " alumnos es: ", promedio_edades
    Sino
        Escribir "No se ingresaron edades válidas."
    FinSi
	
FinFuncion




Funcion CalcularSueldo
    Definir total_horas, sueldo, valor_hora Como Real
	
    total_horas = 0
    sueldo = 0
	
    Escribir "Ingresa el valor de la hora de trabajo: "
    Leer valor_hora
	
    Para dia = 1 Hasta 20 Hacer
        Escribir "Ingresa las horas trabajadas en el día ", dia, ": "
        Leer horas_trabajadas
        total_horas = total_horas + horas_trabajadas
    FinPara
	
    sueldo = total_horas * valor_hora
	
    Escribir "El empleado trabajó un total de ", total_horas, " horas en el mes."
    Escribir "Su sueldo total es: $", sueldo
	
FinFuncion




Funcion VentasTienda
    Definir N, venta, contador, ventas_mayor_1000, ventas_entre_500_1000, ventas_menor_500 Como Entero
    Definir monto_mayor_1000, monto_entre_500_1000, monto_menor_500, monto_total Como Real
	
    ventas_mayor_1000 = 0
    ventas_entre_500_1000 = 0
    ventas_menor_500 = 0
    monto_mayor_1000 = 0
    monto_entre_500_1000 = 0
    monto_menor_500 = 0
    monto_total = 0
	
    Escribir "Ingresa la cantidad de ventas realizadas (N): "
    Leer N
	
    Para contador = 1 Hasta N Hacer
        Escribir "Ingresa el monto de la venta ", contador, ": "
        Leer venta
		
        monto_total = monto_total + venta
		
        Si venta > 1000 Entonces
            ventas_mayor_1000 = ventas_mayor_1000 + 1
            monto_mayor_1000 = monto_mayor_1000 + venta
        Sino
            Si venta > 500 Y venta <= 1000 Entonces
                ventas_entre_500_1000 = ventas_entre_500_1000 + 1
                monto_entre_500_1000 = monto_entre_500_1000 + venta
            Sino
                ventas_menor_500 = ventas_menor_500 + 1
                monto_menor_500 = monto_menor_500 + venta
            FinSi
        FinSi
    FinPara
	
    Escribir "Ventas mayores a $1000: ", ventas_mayor_1000, " (Monto total: $", monto_mayor_1000, ")"
    Escribir "Ventas entre $500 y $1000: ", ventas_entre_500_1000, " (Monto total: $", monto_entre_500_1000, ")"
    Escribir "Ventas menores o iguales a $500: ", ventas_menor_500, " (Monto total: $", monto_menor_500, ")"
    Escribir "Monto total de ventas: $", monto_total
	
FinFuncion




Funcion PromedioCalificaciones
    Definir n, i Como Entero
    Definir nota_final, promedio_logica, promedio_requerimientos, promedio_calculos, promedio_general Como Real
	
    promedio_logica = 0
    promedio_requerimientos = 0
    promedio_calculos = 0
    promedio_general = 0
	
    Escribir "Ingresa la cantidad de alumnos: "
    Leer n
	
    Para i = 1 Hasta n Hacer
        Escribir "Alumno ", i, ":"
        Escribir "Ingresa la nota final en Lógica: "
        Leer nota_final
        promedio_logica = promedio_logica + nota_final
		
        Escribir "Ingresa la nota final en Requerimientos: "
        Leer nota_final
        promedio_requerimientos = promedio_requerimientos + nota_final
		
        Escribir "Ingresa la nota final en Cálculos: "
        Leer nota_final
        promedio_calculos = promedio_calculos + nota_final
    FinPara
	
    promedio_logica = promedio_logica / n
    promedio_requerimientos = promedio_requerimientos / n
    promedio_calculos = promedio_calculos / n
    promedio_general = (promedio_logica + promedio_requerimientos + promedio_calculos) / 3
	
    Escribir "Promedio en Lógica: ", promedio_logica
    Escribir "Promedio en Requerimientos: ", promedio_requerimientos
    Escribir "Promedio en Cálculos: ", promedio_calculos
    Escribir "Promedio general: ", promedio_general
	
FinFuncion




Funcion PromedioSueldosYBono
    Definir sueldo, bono, promedio_sueldo_auxiliar, promedio_sueldo_agregado, promedio_sueldo_principal, promedio_bono_auxiliar, promedio_bono_agregado, promedio_bono_principal Como Real
    Definir categoria Como Cadena
	
    sueldo = 0
    bono = 0
    promedio_sueldo_auxiliar = 0
    promedio_sueldo_agregado = 0
    promedio_sueldo_principal = 0
    promedio_bono_auxiliar = 0
    promedio_bono_agregado = 0
    promedio_bono_principal = 0
    categoria = ""
	
    Escribir "Ingresa los sueldos y categorías de los profesores (Para terminar, ingresa una categoría inexistente)."
	
    Mientras categoria <> "Auxiliar" Y categoria <> "Agregado" Y categoria <> "Principal" Hacer
        Escribir "Sueldo del profesor: "
        Leer sueldo
		
        Si categoria = "Auxiliar" Entonces
            bono = sueldo * 0.10
            promedio_sueldo_auxiliar = promedio_sueldo_auxiliar + sueldo
            promedio_bono_auxiliar = promedio_bono_auxiliar + bono
        Sino
            Si categoria = "Agregado" Entonces
                bono = sueldo * 0.20
                promedio_sueldo_agregado = promedio_sueldo_agregado + sueldo
                promedio_bono_agregado = promedio_bono_agregado + bono
            Sino
                Si categoria = "Principal" Entonces
                    bono = sueldo * 0.50
                    promedio_sueldo_principal = promedio_sueldo_principal + sueldo
                    promedio_bono_principal = promedio_bono_principal + bono
                FinSi
            FinSi
        FinSi
		
        Escribir "Categoría del profesor: "
        Leer categoria
    FinMientras
	
    Si promedio_sueldo_auxiliar > 0 Entonces
        promedio_sueldo_auxiliar = promedio_sueldo_auxiliar / (promedio_sueldo_auxiliar / sueldo)
        promedio_bono_auxiliar = promedio_bono_auxiliar / (promedio_bono_auxiliar / bono)
        Escribir "Promedio de sueldo de la categoría Auxiliar: ", promedio_sueldo_auxiliar
        Escribir "Promedio de bono de la categoría Auxiliar: ", promedio_bono_auxiliar
    FinSi
	
    Si promedio_sueldo_agregado > 0 Entonces
        promedio_sueldo_agregado = promedio_sueldo_agregado / (promedio_sueldo_agregado / sueldo)
        promedio_bono_agregado = promedio_bono_agregado / (promedio_bono_agregado / bono)
        Escribir "Promedio de sueldo de la categoría Agregado: ", promedio_sueldo_agregado
        Escribir "Promedio de bono de la categoría Agregado: ", promedio_bono_agregado
    FinSi
	
    Si promedio_sueldo_principal > 0 Entonces
        promedio_sueldo_principal = promedio_sueldo_principal / (promedio_sueldo_principal / sueldo)
        promedio_bono_principal = promedio_bono_principal / (promedio_bono_principal / bono)
        Escribir "Promedio de sueldo de la categoría Principal: ", promedio_sueldo_principal
        Escribir "Promedio de bono de la categoría Principal: ", promedio_bono_principal
    FinSi
	
FinFuncion




Algoritmo ejercicios
	NumerosPares()
	SumaSucesiva()
	EdadPromedio()
	CalcularSueldo()
	VentasTienda()
	PromedioCalificaciones()
	PromedioSueldosYBono()
FinAlgoritmo

