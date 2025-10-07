import autos.*


class Dependencia{

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
    method capacidadTotalEnColor(color)=rodados.filter({r=>r.color()==color}).sum({r=>r.capacidad()})
    method colorDelRodadoMasRapido()=rodados.max({r=>r.velocidad()}.color())
    method capacidadFaltante() = cantidadDeEmpleados - rodados.sum({r=>r.capacidad()})
    method esGrande() = (cantidadDeEmpleados >= 40) and (rodados.size() >= 5)
}