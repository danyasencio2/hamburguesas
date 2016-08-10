//: enumeraciones aplica para aquello que representa una lista y que no vaya a cambiar

import UIKit

enum Ciudad{
    case SanJose, Alajuela, Cartago, Limon
}

enum distanciaCiudad : Int{
    case SanJose = 100, Alajuela = 80, Cartago = 90, Heredia = 150, Limon //puedo dejar esta ciudad sin valor
}

func obtenerCiudad(ciudad : Ciudad) -> String{
    switch ciudad{
    case Ciudad.SanJose :
        return "Ciudad capital"
    case .Alajuela, .Cartago, .Limon: //puedo quitar la palabra Ciudad porque ya declare que el tipo de dato que recibe la funcion es de tipo Ciudad
        return "Ciudad no capital"
    }
}

obtenerCiudad(Ciudad.Alajuela)

func calcularDistanciaEntreCiudades(ciudad1:distanciaCiudad, ciudad2:distanciaCiudad) -> Int{
    return abs(ciudad1.rawValue - ciudad2.rawValue)
}

calcularDistanciaEntreCiudades(distanciaCiudad.SanJose, ciudad2 : distanciaCiudad.Heredia)




