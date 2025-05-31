import bicis.*

class Deposito {
    const bicis = []
    method agregarBicis(listaDeBicis) {
        if(listaDeBicis.any({b=>bicis.contains(b)})){
            self.error("no se puede agregar dos veces una bici al deposito") 
            // throw new Exception (message = "no se puede agregar dos veces una bici al deposito")            
        }
        if(listaDeBicis.any({b=> listaDeBicis.occurrencesOf(b) > 1})){
            self.error("hay bicis duplicadas dentro de la lista de las nuevas bicis") 
            // throw new Exception (message = "no se puede agregar dos veces una bici al deposito")            
        }
        if (not listaDeBicis.asSet().intersection(bicis.asSet()).isEmpty()){
            self.error("hay alguna bici en listaDeBicis que esta en bicis")
        }
        bicis.addAll(listaDeBicis)
    }
    method bicisRapidas() = bicis.filter({b=>b.velocidadDeCrucero() > 25})
    method marcaDeBicis() = bicis.asSet().filter({b=>b.marca()})
}