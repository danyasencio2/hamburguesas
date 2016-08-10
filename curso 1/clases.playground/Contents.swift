//: Playground - noun: a place where people can play

import UIKit

/*
struct Producto{
    let marca : String
    var precio : Double
    
    init(marca:String, precio:Double){
        self.marca=marca
        self.precio=precio
    }
}
 */

class Producto{
    let marca : String
    var precio : Double = 0.0
    
    init(marca:String, precio:Double){
        self.marca=marca
        self.precio=precio
    }
    
    func calcularPrecioDeDescuento(porcentajeDeDescuento:Double) -> Double{
        return precio - precio*porcentajeDeDescuento/100
    }
}

enum Seccion{//un libro tiene muchas secciones
    case Introduccion, Indice, Conclusiones
    
    init(){
        self = .Introduccion//el valor inicial
    }
}

class Libro : Producto{//la clase Libro hereda las caracteristicas de la clase Producto
    var seccion = Seccion()
    let anoDePublicacion : Int
    var contieneFormatoDigital : Bool? //opcional, puede ser o no puede ser
    
    var paginas = 1000
    var palabrasPorPagina = 60
    var numeroDePalabrasDelLibro : Int{
        get{
            return paginas*palabrasPorPagina
        }
        set{
            paginas = newValue
            palabrasPorPagina = newValue / 100
        }
    }
    
    init(marca:String, precio:Double, anoDePublicacion:Int){
        self.anoDePublicacion = anoDePublicacion //primero inicializo los de la subclase y luego los de la super clase
        super.init(marca: marca, precio: precio) //inicializo a mi super clase
    }
    
    convenience init(marca:String){ //al agregar la palabra convenience esta diciendo que es un inicializador personalizado con un precio y ano de publicacion por DEFAULT, asi solo tengo que llamarlo con el parametro MARCA.
        self.init(marca:marca, precio:0.0, anoDePublicacion:2001)
    }
    
    override func calcularPrecioDeDescuento(porcentajeDeDescuento:Double) -> Double{
        return super.calcularPrecioDeDescuento(porcentajeDeDescuento)
    }
    
}

var miLibro = Libro(marca: "MG", precio: 190.50, anoDePublicacion: 1990)
miLibro.marca //acceso a los altributos que hereda de Producto
miLibro.precio //accedo a los atributos que hereda de Producto
miLibro.seccion //accedo a su propio atributo
miLibro.calcularPrecioDeDescuento(30)

var nuevoLibro = Libro(marca: "BB")
nuevoLibro.marca
nuevoLibro.precio
nuevoLibro.anoDePublicacion

nuevoLibro.numeroDePalabrasDelLibro //get
nuevoLibro.numeroDePalabrasDelLibro = 1000 //set
nuevoLibro.numeroDePalabrasDelLibro //get

nuevoLibro.contieneFormatoDigital = true
if let formatoDigital = nuevoLibro.contieneFormatoDigital{//valida si existe o no existe el opcional, puede ser que me mande un nil
    if formatoDigital{//aqui valido el valor que tenga, verdadero o falso
        print("Tambien es digital")
    }
}

var miTelefono = Producto(marca: "Iphone 6+", precio: 199.56)
miTelefono.marca
miTelefono.precio //precio sin descuento

miTelefono.calcularPrecioDeDescuento(30) //aplicar 30% de descuento
miTelefono.precio //nuevo preco con descuento


//var telefono = Producto(marca : "Americana", precio : 169.00)
//telefono.precio


