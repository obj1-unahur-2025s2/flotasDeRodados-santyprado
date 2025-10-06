class AutosEspecial{

  const property capacidad 
  const property velocidad 
  const peso
  const color
  method peso() = peso
  method color() = color


}

class Corsa {
  const color
  
  method color() = color
  
  method capacidad() = 4
  
  method velocidad() = 150
  
  method peso() = 1300
}

class Kwid {
  const tanqueAdicional
  
  method capacidad() = if (tanqueAdicional) 3 else 4
  
  method velocidad() = if (tanqueAdicional) 120 else 110
  
  method peso() = 1200 + if (tanqueAdicional) 150 else 0
  
  method color() = "azul"
}

object traffic {
  var interior = comodo
  var motor = pulenta
  
  method capacidad() = interior.capacidad()
  
  method peso() = (4000 + interior.peso()) + motor.peso()
  
  method velocidad() = motor.velocidad()
  
  method color() = "blanco"
  
  method cambiarMotor(unMotor) {
    motor = unMotor
  }
  
  method cambiarInterior(unInterior) {
    interior = unInterior
  }
}



object pulenta {
  method peso() = 800
  
  method velocidad() = 130
}

object bataton {
  method peso() = 500
  
  method velocidad() = 80
}

object comodo {
  method capacidad() = 5
  
  method peso() = 700
}

object popular {
  method capacidad() = 12
  
  method peso() = 1000
}




