import autos.*


class Dependencia{
    var property pedidosRegistrados = []

    method agregarPedido(unPedido){
      pedidosRegistrados.add(unPedido)
    }
    method quitarPedido(unPedido) {
      pedidosRegistrados.remove(unPedido)
    }


    const rodados = []

    const cantidadDeEmpleados

    method agregarFlota(rodado) {
      rodados.add(rodado)
    }
    method quitarFlota(rodado){
        rodados.remove(rodado)
    }
    method pesoTotal()=rodados.sum({r=>r.peso()})

    method estaBienEquipada()=rodados.size() >=3 and rodados.all({r =>r.velocidad()>=100 })
    method capacidadTotalEnColor(color) = rodados.filter({r=>r.color()==color}).sum({r=>r.capacidad()})
    method colorDelRodadoMasRapido()=rodados.max({r=>r.velocidad()}).color()
    method capacidadFaltante() = cantidadDeEmpleados - rodados.sum({r=>r.capacidad()})
    method esGrande() = (cantidadDeEmpleados >= 40) and (rodados.size() >= 5)
    method totalDePasajeros() = pedidosRegistrados.sum({p =>p.cantidadPasajeros()})
    method pedidosInsatisfechos() = pedidosRegistrados.filter({ p => rodados.all({ r => not p.puedeSatisfacerPedido(r) }) })
    method esColorIncompatible(unColor) = pedidosRegistrados.all({p =>p.colores().contains(unColor)})
    method relajarPedidos() {pedidosRegistrados.forEach({p=>p.relajar()})}
}

class Pedido {
  
  var property distancia

  var tiempo
  
  method tiempo() = tiempo 

  var cantidadPasajeros

  method cantidadPasajeros() = cantidadPasajeros 

  const colores = #{}

  method colores() = colores
  
  method velocidadRequerida() = self.distancia()/self.tiempo()

  method puedeSatisfacerPedido(unAuto){
    return (unAuto.velocidad()>=self.velocidadRequerida() + 10) and 
    (unAuto.capacidad()>= self.cantidadPasajeros()) and
    not colores.contains(unAuto.color())
  }
  method acelerar() {
    tiempo -=1
  }
  method relajar(){
    tiempo+=1
  } 
  method agregarUnColorIncompatible(unColor) {
    colores.add(unColor)
  }
}