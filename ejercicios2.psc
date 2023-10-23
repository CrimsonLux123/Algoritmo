	
Funcion CalcularPrecioConDescuento
	
    Definir precio, precio_con_descuento Como Real
	
    Escribir "Ingrese el precio del traje: "
    Leer precio
	
    Si precio > 2500 Entonces
        precio_con_descuento = precio - (precio * 0.15)
    Sino
        precio_con_descuento = precio - (precio * 0.08)
    FinSi
	
    Escribir "El precio con descuento es de: ", precio_con_descuento, " euros."
	
FinFuncion




Funcion CalcularPresupuestoBanquete
    Definir costo_por_persona, numero_de_personas, presupuesto Como Real
	
    Escribir "Ingrese el número de personas en el evento: "
    Leer numero_de_personas
	
    Si numero_de_personas <= 200 Entonces
        costo_por_persona = 95.0
    Sino
        Si numero_de_personas <= 300 Entonces
            costo_por_persona = 85.0
        Sino
            costo_por_persona = 75.0
        FinSi
    FinSi
	
    presupuesto = costo_por_persona * numero_de_personas
	
    Escribir "El presupuesto para el evento es de $", presupuesto
	
FinFuncion




Funcion CalcularCostoViajeEstudios
    Definir numero_de_alumnos, costo_por_alumno, costo_total, costo_compania Como Real
	
    Escribir "Ingrese el número de alumnos: "
    Leer numero_de_alumnos
	
    Si numero_de_alumnos >= 100 Entonces
        costo_por_alumno = 65.0
    Sino
        Si numero_de_alumnos >= 50 Y numero_de_alumnos <= 99 Entonces
            costo_por_alumno = 70.0
        Sino
            Si numero_de_alumnos >= 30 Y numero_de_alumnos <= 49 Entonces
                costo_por_alumno = 95.0
            Sino
                costo_por_alumno = 0.0
                costo_compania = 4000.0
            FinSi
        FinSi
    FinSi
	
    costo_total = costo_por_alumno * numero_de_alumnos
	
    Escribir "El costo total para el viaje de ", numero_de_alumnos, " alumnos es de: $", costo_total
    Escribir "La compañía de autobuses recibirá $", costo_compania
	
FinFuncion




Funcion CalcularCostoViaje
    Definir tipo_autobus Como Caracter
    Definir distancia, costo_total, costo_por_persona Como Real
    Definir numero_personas Como Entero
	
    Escribir "Ingrese el tipo de autobús (A, B o C): "
    Leer tipo_autobus
	
    Escribir "Ingrese la distancia a recorrer en kilómetros: "
    Leer distancia
	
    Escribir "Ingrese el número de personas: "
    Leer numero_personas
	
    Si numero_personas >= 20 Entonces
        Si tipo_autobus == "A" Entonces
            costo_por_persona = 2.0
        Sino
            Si tipo_autobus == "B" Entonces
                costo_por_persona = 2.5
            Sino
                Si tipo_autobus == "C" Entonces
                    costo_por_persona = 3.0
                FinSi
            FinSi
        FinSi
    Sino
        costo_por_persona = 0.0
    FinSi
	
    costo_total = costo_por_persona * numero_personas * distancia
	
    Escribir "El costo total del viaje es de $", costo_total
    Escribir "El costo por persona es de $", costo_por_persona
	
FinFuncion




Funcion CalcularCostoColas
    Definir cantidad_colas, costo_por_unidad, costo_total_sin_iva, iva, costo_total_con_iva Como Real
	
    Escribir "Ingrese la cantidad de colas compradas: "
    Leer cantidad_colas
	
    Si cantidad_colas > 23 Entonces
        costo_por_unidad = 0.50
    Sino
        costo_por_unidad = 0.50 * 1.20
    FinSi
	
    costo_total_sin_iva = cantidad_colas * costo_por_unidad
    iva = costo_total_sin_iva * 0.12
    costo_total_con_iva = costo_total_sin_iva + iva
	
    Escribir "Cantidad comprada: ", cantidad_colas, " colas"
    Escribir "Costo por unidad: $", costo_por_unidad
    Escribir "Total sin IVA: $", costo_total_sin_iva
    Escribir "IVA: $", iva
    Escribir "Total a pagar: $", costo_total_con_iva
	
FinFuncion




Funcion  CalcularCostoProductos
    Definir cantidad_productos, precio_original, descuento_inicial, total, descuento_adicional, valor_a_pagar Como Real
	
    Escribir "Ingrese la cantidad de productos comprados: "
    Leer cantidad_productos
	
    Escribir "Ingrese el precio original por producto: "
    Leer precio_original
	
    Si cantidad_productos > 19 Entonces
        descuento_inicial = precio_original * 0.10
    Sino
        descuento_inicial = precio_original * 0.20
    FinSi
	
    total = (precio_original - descuento_inicial) * cantidad_productos
    descuento_adicional = total * 0.05
    valor_a_pagar = total - descuento_adicional
	
    Escribir "Cantidad comprada: ", cantidad_productos, " productos"
    Escribir "Precio original por producto: $", precio_original
    Escribir "Descuento inicial: $", descuento_inicial
    Escribir "Total: $", total
    Escribir "Descuento adicional: $", descuento_adicional
    Escribir "Valor a pagar: $", valor_a_pagar
	
FinFuncion




Funcion CalcularCostoConsulta
    Definir numero_cita Como Entero
    Definir costo_cita, costo_total_tratamiento Como Real
	
    Escribir "Ingrese el número de cita: "
    Leer numero_cita
	
    Si numero_cita <= 3 Entonces
        costo_cita = 200.0
    Sino
        Si numero_cita <= 5 Entonces
            costo_cita = 150.0
        Sino
            Si numero_cita <= 8 Entonces
                costo_cita = 100.0
            Sino
                costo_cita = 50.0
            FinSi
        FinSi
    FinSi
	
    costo_total_tratamiento = (200.0 * 3) + (150.0 * 2) + (100.0 * 3) + ((numero_cita - 8) * 50.0)
    costo_cita = costo_cita * 1.0
    costo_total_tratamiento = costo_total_tratamiento * 1.0
	
    Escribir "El costo de la cita número ", numero_cita, " es de $", costo_cita
    Escribir "El monto total gastado en el tratamiento hasta la cita número ", numero_cita, " es de $", costo_total_tratamiento
	
FinFuncion





Algoritmo ejercicios
	CalcularPrecioConDescuento()
	CalcularPresupuestoBanquete()
	CalcularCostoViajeEstudios()
	CalcularCostoViaje()
	CalcularCostoColas()
	CalcularCostoProductos()
	CalcularCostoConsulta()
FinAlgoritmo


