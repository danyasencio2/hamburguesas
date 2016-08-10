//: Estructuras

import UIKit

struct Automovil{
    let marca : String
    var precio : Double
    
    init(marca:String, precio:Double){
        self.marca = marca
        self.precio = precio
    }
    
    func obtenerDescripcion() -> String{
        return "\(marca) \(precio)"
    }
}

var auto = Automovil(marca:"BWM",precio:50000.00)
auto.marca
auto.precio = 45000.00
auto.precio

auto.obtenerDescripcion()

