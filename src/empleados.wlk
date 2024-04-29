// empleados 

object galvan{
	
	var sueldo = 15000
	var totalDinero = 0
	var totalDeuda = 0
	
	
	
	method sueldo() = sueldo
	method totalDinero() = totalDinero

	method sueldo(nuevoValor){
		sueldo = nuevoValor
	}
	
	
	
	method cobrarSueldo(){
		
		
		self.pagarDeudas(totalDeuda , totalDinero)
	}
	
	method pagarDeudas(deuda , sueldoActual){
		
		totalDinero = 0.max(sueldoActual - deuda)
	}
	

	
	method gastar(cuanto) = if(totalDinero > cuanto ) {totalDinero -= cuanto} else {totalDeuda += cuanto}
	
	
	method sumarDeuda(cuanto){
		totalDeuda += cuanto
	}
	method totalDeuda() = totalDeuda
	

	
}

object baigorria{
	
	var sueldo 
	var totalCobrado = 0
	
	method sueldo() = sueldo 
	method totalCobrado() = totalCobrado
	method sueldo(empanadasVendidas){
		sueldo = empanadasVendidas * 150
	}
	
	method cobrarSueldo(){
		 totalCobrado += self.sueldo() 
	}
}

object gimenez{
	
	var fondo = 3000000
	
	method fondo() = fondo 
	
	method pagarA(empleado){
		fondo -= empleado.sueldo()
		 empleado.cobrarSueldo()
		
	}
}

