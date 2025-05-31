class Bici {
    const rodado
    const largo
    const marca
    const accesorios = #{}
    method altura() = rodado * 2.5 + 15
    method velocidadDeCrucero() = if (largo > 120) rodado + 6 else rodado + 2 
    method carga() = accesorios.sum({a=> a.carga()}) 
    method agregarAccesorio(unAccesorio) {accesorios.add(unAccesorio)} 
    method quitarrAccesorio(unAccesorio) {accesorios.remove(unAccesorio)} 
    method peso() = self.pesoAccesorios() + rodado / 2
    method pesoAccesorios() = accesorios.sum({a=> a.peso()})
    method tieneLuz() = accesorios.any({a=>a.esLuminoso()})
    method cantidadAccesoriosLivianos() = accesorios.count({a=>a.peso() < 1})

}

class Farolito {
    method peso() = 0.5
    method carga() = 0
    method esLuminoso() = true
}

class Canasto{
    const volumen
    method peso()  = volumen / 10
    method carga() = volumen * 2
    method esLuminoso() = false 
    method initialize(){
        if(not volumen.between(1, 20)){
          self.error(volumen.toString() + "no es un volumen valido")
        }
    } 
}

class Morral{
    const largo
    var   tieneOjoDeGato  
    method ponerOjoDeGato() {tieneOjoDeGato = true}
    method falseOjoDeGato() {tieneOjoDeGato = false}
    method esLuminoso() = tieneOjoDeGato
    method peso()  = 1.2
    method carga() = largo / 3
}