//: funciones

import UIKit

func calcularImc(peso : Double, altura : Double) -> Double {
    return peso/(altura*altura)
}

func calcularImcExtendido(peso : Double, altura : Double) -> (Double, String) {
    let imc = peso/(altura*altura)
    var mensaje = ""
    if(imc>18.50 && imc<25.00){
        mensaje = "Peso normal"
    }else{
        mensaje = "Debes de acudir con tu medico"
    }
    let resultado = (imc, mensaje)
    return resultado
}

func calcularImcSuperExtendido(peso : Double, altura : Double) -> (imcCalculado : Double, mensajeDeSalud : String) {
    let imc = peso/(altura*altura)
    var mensaje = ""
    if(imc>18.50 && imc<25.00){
        mensaje = "Peso normal"
    }else{
        mensaje = "Debes de acudir con tu medico"
    }
    let resultado = (imc, mensaje)
    return resultado
}

print(calcularImc(91.63, altura : 1.85))

let resultadoImcExtendido = calcularImcExtendido(91.63, altura : 1.85)
print(resultadoImcExtendido.0)
print(resultadoImcExtendido.1)

let (imc, _) = calcularImcExtendido(91.63, altura : 1.85) //especifico que el valor del imc se almacena en la variable imc y que no espero un mensaje
print(imc)

let imcTupla = calcularImcSuperExtendido(91.63, altura : 1.85)
print(imcTupla.imcCalculado)
print(imcTupla.mensajeDeSalud)


//mas sobre tuplas

var pelicula : (nombre : String, añoDeSalida : Int, calificacion : Double) = ("El Tigre", 1990, 7.0)

print(pelicula.nombre)
print(pelicula.añoDeSalida)
print(pelicula.calificacion)








