//: enumeraciones y funciones

import UIKit

enum Ciudad : Int{
    case Alajuela = 450, SanJose = 10, Cartago = 78, Limon = 512
    
    func calcularDistancia()->Int{
        return Ciudad.Alajuela.rawValue-self.rawValue
    }
    
    init(){
        self = .Alajuela //inicia con el valor self en Alajuela
    }
}

var ciudad = Ciudad() //llamado al init
ciudad.rawValue
ciudad.calcularDistancia()
