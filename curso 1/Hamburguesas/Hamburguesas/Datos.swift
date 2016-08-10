//
//  Datos.swift
//  Hamburguesas
//
//  Created by Dany Asencio on 8/10/16.
//  Copyright © 2016 Dany Asencio. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises = ["Honduras", "Costa Rica", "Guatemala", "El Salvador", "Panama", "Nicaragua", "Canada", "Colombia", "Venezuela", "Brasil", "Argentina", "Bolivia", "Paraguay", "Chile", "Uruguay", "Peru", "Republica Dominicana", "Jamaica", "Haiti", "Ecuador"]
    
    func obtenPais() -> String {
        return paises[Int(arc4random()) % paises.count]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesa = ["Chuck Norris", "Jalapeña", "Matahambritas", "Big Mac", "Quesohamburguesa", "Doble con todo", "WTF", "Dura de matar", "Sencilla", "Olimpica", "Gringa", "Pacifica", "Vegetariana", "Chipotleña", "Doble carne", "Maya", "Costeña", "Aniquiladora", "Imposible", "Tocino Tocino"]
    
    func obtenHamburguesa() -> String {
        return hamburguesa[Int(arc4random()) % hamburguesa.count]
    }
}


struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    
    func regresaColorAleatorio () -> UIColor{
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}
