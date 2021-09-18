import UIKit

func greeting (person: String) -> String {
    let greet = "Hola, \(person)!"
    return  greet
}

greeting(person: "Ricardo Celis")

//Parametros de Entrada

func sayHelloWorld() -> String{
    return "Hello World"
}


func greeting2(person: String, isMale: Bool) -> String {
    if isMale {
        return "Bienvenido Caballero \(person)"
    } else {
        return "Bienvenida Señorita \(person)"
    }
}

greeting2(person: "Ricardo Celis", isMale: true)
greeting2(person: "Olivia", isMale: false)

//Valores de Retorno, Optionals y Parametros de Salida

func greet2(person: String) {
    print("Hola \(person)")
}

greet2(person: "Jose Eduardo")
greet2(person: "Edgar")


func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

//printAndCount(string: "Gerardo")

func printWithOutCounting(string: String) {
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hola que tal")
printWithOutCounting(string: "Hola que tal")



func minMax(array:[Int]) -> (min: Int, max: Int)?{
    
    if array.isEmpty {return nil} //por si esta vacio
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds = minMax(array: [6,3,-8,3,1,9,15,-9])
print("Los valores se hallan entre \(bounds!.min) y \(bounds!.max)")

// Etiquetas de Params y Variadics

// Cuando agregamos un Int = 6, estamos agregando un valor por defecto
func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 6) {
    
}
//F1 y F2 se vuelven alias para acortar los nombres
someFunction(f1: 5, f2: 10)

func greeting(_ person: String, from hometown: String) -> String {
    return "Hola \(person) un placer que nos visites de \(hometown)"
}

greeting("Juan Gabriel", from: "Mallorca")

// Puntos suspensivos cuando no sabemos cuantos valores se van a recibir la funcion

func mean(_ numbers: Double...) -> Double {
    var total: Double = 0;
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

mean(1,2,3,4,5,6,7,8,9)
mean(4,3,2,5,6,7,7,8,2)

//RETO

func mediaGeometrica(_ numbers: Double...) -> Double{
    var total: Double = 0
    for number in numbers {
        //Se multiplican todos los elementos
        if total == 0 {
            total = number
        }else{
            total *= number
        }
    }
   
    return pow(total, 1/Double(numbers.count))


}
print(mediaGeometrica(1.20,1.15,1.33,1.25))

//Parametros tipo inout

let x = 5

func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("El número ahora vale \(number2)")
}

addOne(number: x)

//func swapTwoInts(_ a: Int, _ b: Int) {
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temA = a
    a = b
    b = temA
}

var someInt = 3
var otherInt = 7

print("Some int vale \(someInt)y otherInt vale \(otherInt)")
swapTwoInts(&someInt, &otherInt)

print("Some int vale \(someInt)y otherInt vale \(otherInt)")

//Function Types

func addTwoInts( _ a: Int, _ b: Int) -> Int {
    return a+b
} // (int, int) -> int

func multiplyTwoInts( _ a: Int, _ b: Int) -> Int {
    return a*b
} // (int, int) -> int

func printHW() {
    print("Hello Wordl")
} // () -> Void

var mathFunction: (Int, Int) -> Int = multiplyTwoInts

mathFunction(4,5)


func printMathResult( _ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Resultado: \(mathFunction(a,b))")
}

printMathResult(multiplyTwoInts, 5, 10)

// Nested functions


