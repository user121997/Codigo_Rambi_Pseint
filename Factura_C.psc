Algoritmo Factura_C_Rambi
Definir cant, i, precio, subtotal, total, tarjeta  Como Entero;
Definir seguir, tarj Como Caracter;
	Escribir "Factura Electrónica por RAMBI";
	Escribir "Factura Tipo" Sin Saltar;
	Escribir ' C';
	Escribir "-------------------------------------";
	Mientras seguir <> 'n' Hacer
		Para i <- 1 Hasta 1 Con Paso +1 Hacer
			Escribir "Ingrese un producto: " Sin Bajar;
			Leer prod;
			Escribir "Ingrese el precio del producto: " Sin Bajar;
			Leer precio;
			Escribir "Ingrese cantidad del producto: " Sin Bajar;
			Leer cant;
			Escribir "-------------------------------------";
			Escribir "Producto: " prod;
			Escribir "Precio: $ " precio;
			Escribir "Cantidad: " cant;
			Escribir "*************************************";
			cant <- cant * precio;
			subtotal <- subtotal + cant;
			Escribir "SubTotal es: $ " subtotal;
		FinPara
		Escribir "¿Desea ingresar otro producto? (s/n)" Sin Bajar;
		Leer seguir;
	Fin Mientras
	Escribir "-------------------------------------";
	Escribir "¿Deseas pagar con tarjeta? (s/n)" Sin Bajar;
	Leer tarj;
	Si  tarj == 's' Entonces
		tarjeta <- subtotal * 0.20;
		total <- subtotal + tarjeta;
		Escribir "El total a pagar con tarjeta: $" total;
	SiNo
		total <- Total + subtotal;
		Escribir "Total a pagar: $ " total;
	Fin Si
	Escribir "*************************************";
	Escribir "¡¡GRACIAS POR SU COMPRA!!";
FinAlgoritmo