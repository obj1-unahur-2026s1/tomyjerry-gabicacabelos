object tom {
    var energia = 50
    
    method velMaxima() = 5 + (energia / 10)
    
    // Abstraemos el cálculo del costo de correr
    method energiaGastada(metros) {
        return metros / 2
    }

    method comer(raton) {
      energia = energia + 12 + raton.peso()
    }

    method correr(metros) {
      // Usamos el cálculo abstracto
      energia = energia - self.energiaGastada(metros)
    }

    method puedeCazar(distancia) {
      // Usamos el cálculo abstracto
      return energia > self.energiaGastada(distancia)
    }

    method cazar(raton, distancia) {
        if (self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comer(raton)
        }
    }
}

object jerry {
  var edad = 2 // Ya no necesita ser property si controlamos la edad internamente
  
  method peso() = edad * 20
  
  // Expresamos mejor el comportamiento de cumplir años
  method cumplirAnios() {
      edad = edad + 1
  }
}

object nibbles {
  method peso() = 35
}