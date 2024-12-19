
Algoritmo Proyecto
	
	
	Definir Producto , Destino Como Cadena
	Definir Cantidad Como Real
	Definir Precio_Unitario Como Real
	Definir Total , Subtotal Como Real
	Definir Total_2 Como Real
	Definir Total_3 Como Real
	Definir Descuento_1 , Descuento_2 , Descuento_3 , Descuento Como Real
	Definir Total_Descontado , Total_antesde_envio ,Total_Iva  Como Real
	Definir IVA Como Real
	Definir Monto_IVA Como Real
	Definir Envio Como Real
	Definir Peso_Producto1 , Peso_Producto2 , Peso_Producto3 Como Real
	Definir Peso Como Real
	Definir Precio_Peso Como Real
	Definir Destinos Como Cadena
	
	Dimension Destinos[4] 
	Destinos[1] <- " Santiago"
	Destinos[2] <- " Viña"
	Destinos[3] <- " Valparaiso"
	Destinos[4] <- " Concon"
	
	Envio <- 0
	IVA <- 0.12 
	Descuento_1 <- 0.10
	Descuento_2 <- 0.20
	Descuento_3 <- 0.30
	Peso_Producto <- 5
	Peso_Producto2 <- 8
	Peso_Producto3 <- 10
	
	Escribir " ** ¿Cuál es el producto que quiere llevar? ** ^( ° 3 °)^ Favor de Ingresar nombre del producto: "
	Leer Producto
	Escribir " ** ¿Cuánto cuesta? ** Escribir Valor : "
	Leer Precio_Unitario
	Escribir " ** ¿Cuántos va a llevar? ** ^( ° u ° )^  Ingrese número positivo :  "
	Leer Cantidad
	Escribir " ** ¿Cuánto pesa? ** ^( ° . ° )^ **No usted, el producto** Ingrese número positivo: "
	Leer Peso
	
	Subtotal <- Cantidad * Precio_Unitario
	
	Mientras Peso <= 0 Hacer
		Si Peso <= 0 Entonces
			Escribir "No puede pesar 0 ni menos pesar negativo... ^( - _ - )^ ***Intenta de nuevo*** "
			Leer Peso
		FinSi
	FinMientras
	
	
	Si peso >= 50 Entonces
		Escribir "Se agregan 10 pesos al total"
		Precio_Peso <- Peso_Producto3
	Sino 
		Si peso >= 30 Entonces
			Escribir "Se agregan 8 pesos al total"
			Precio_Peso <- Peso_Producto2
		Sino
			si peso >= 5 Entonces
				Escribir "Se agregan 5 pesos al total"
				Precio_Peso <- Peso_Producto1
			SiNo
				Escribir " ** ¡Felicidades! ** ¡No se le agregará valor por peso! ** ^( ° 3 -)^ "
				Precio_Peso <- 0
			FinSi
	FinSi
FinSi
	
	Mientras Cantidad <= 0 Hacer
	Si Cantidad <= 0 Entonces
		Escribir "No puede llevar 0 ni tampoco llevar Menos algo... ^( - _ - )^ ***Intenta de nuevo*** "
		Leer Cantidad
	FinSi
FinMientras

	Si Cantidad >= 20 Entonces
		Escribir "Se aplica un descuento del 30%"
		Descuento <- Subtotal * Descuento_3
	Sino
		Si Cantidad >= 10 Entonces
			Escribir "Se aplica un descuento del 20%"
			Descuento <- Subtotal * Descuento_2
		Sino
			Si Cantidad >= 2 Entonces
				Escribir "Se aplica un descuento del 10%"
				Descuento <- Subtotal * Descuento_1
			SiNo
				Descuento <- 0
				Escribir "No tiene descuento"
			FinSi
		FinSi
	FinSi
	
	Total <- Subtotal - Descuento 
	Monto_IVA <- Total * IVA
	
	Para i <- 1 Hasta 4 Con Paso 1 Hacer
		Escribir "Elija el destino:" , Destinos[i]
	FinPara
	
	Leer Destino
	
	Si Destino = "Santiago" Entonces
		Envio <- 2 
	SiNo
		Envio <- 8 
	FinSi
	
	Mientras Destino <> "Santiago" Y Destino <> "Viña" Y Destino <> "Valparaiso" Y Destino <> "Concon" Hacer
		Escribir "Favor de escribir bien y/o escoger una de las opciones, las opciones son : " , Destinos[1] , "," Destinos[2] , "," Destinos[3] , "," Destinos[4]
		Leer Destino
	FinMientras
	
	Total_2 <- Total + Envio + Monto_IVA + Precio_Peso
	
	Escribir "^( ° o° )^" ,   "  **Resumen de su compra**  "
	Escribir "Subtotal: ", "$" , Subtotal
	Escribir "Descuento aplicado: ", "$" , Descuento 
	Escribir "IVA aplicado: ", Monto_IVA , " $ "
	Escribir "Costo de envío: ", "$" , Envio
	Escribir "Costo del peso: " , "$" , Precio_Peso
	Escribir "Total a pagar: ", "$" , Total_2
	
FinAlgoritmo
