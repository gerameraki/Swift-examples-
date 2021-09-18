import UIKit

//BUCLE FOR IN

let names = ["Ricardo Celis", "Juan Gabriel", "Edgar"]

for name in names {
    print( "Hola \(name)")
}

//Ejemplo con Diccionario
let numberOfLegs = ["spider": 8, "ant":6, "dog":4]

for (animalName, legCount) in numberOfLegs {
    print("Animal: \(animalName), nmero de patas: \(legCount)")
}

//Ejemplo con Rangos
for idx in 1...5{
    print("\(idx) x 3 = \(idx*3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 1...power{  //Remplazar _ por idx
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tickMark)")
}

//Reto hacer un reloj de 24 hrs que solo muestre cada 3
let hourDay = 24
let intervalHour = 3

for clock in stride(from: 0, to: hourDay, by: intervalHour){
    print("\(clock) : 00")
}

//BUCLE WHILE

var i = 0

while i<=10 {
    i += 1
}
print(i)

//Repeat while = Do While
repeat {
    i += 1
} while i <= 10
print(i)


//SENTENCIA DE CONTROL
// IF - ELSE

var temp = 11

if temp <= 15 { // temp <= 15
    print("Hace frio!, Enciende la calefacción")
} else if temp >= 25 { // temp > 25
    print("Hace calor! Encendamos el aire acondicionado")
} else { // 15 < temp < 25
    print("La sensacion térmica es agradable, No hace falta modificarla")
}

//Reto de los IF y prestamo
var money = 70

if money <= 15 {
    print("Tranquilo, no pasa nada, toma el dinero.")
} else if money <= 50 {
    print("Vale, pero cuando me lo regresas?")
} else {
    print("Ni que fuera Gobierno o Banco.")
}


//Switch y CASE

let someCharacter: Character = "A"

switch someCharacter {
case "a","A":
    print("Es la primera letra del alfabeto")
case "z", "Z":
    print("Es la ultima letra del alfabeto")
default:
    print("Es alguna otra letra")
}

//RETO

let oneCharacter: Character = "i"

switch oneCharacter {
case "A","E","I","O","U", "a", "e", "i", "o", "u":
    print("El valor ingresado es una vocal")
default:
    print("El valor ingresado no es una vocal")
}

// Switch usando rangos - Interval matching
let moons = 62
let phrase = "Lunas en Saturno"
let naturalCount : String

switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de"
case 100..<1000:
    naturalCount = "Hay centenares de"
default:
    naturalCount = "Hay muchisimas lunas"
}

print("\(naturalCount) \(phrase)")


//Switch usando tuplas

let somePoint = (1,1)

switch somePoint {
case (0,0):
    print("El punto \(somePoint) es el origen de coordenadas")
case (_,0):
    print("El punto \(somePoint) se halla sobre el eje de las X")
case (0,_):
    print("El punto \(somePoint) se halla sobre el eje de las Y")
case (-2...2, -2...2):
    print("El punto \(somePoint) se halla en el interior del cuadrado de lado 4")
default:
    print("El punto \(somePoint) esta en algun otro lado")
}


//Switch con casos compuestos

let anotherCharacter : Character = "e"

switch anotherCharacter {
case "a", "e", "i", "o", "u":
    print("Se trata de una vocal")
case "b", "c", "d", "f", "g":
    print("Se trata de una consonante")
default:
    print("Se trata de un caracter no vocal ni consonante")
}


let stillAnotherPoint = (9,0)

switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("Se halla sobre el eje, a distancia \(distance) del origen")
default:
    print("No esta sobre el eje")
}

//Control Transder Sentences - continue, break, fallthrough, return, throw
//Continue | Continua con la siguiente iteracion
//Breake | Detiene todas las ejecuciones

let sentence = "Las mentes grandes piensan igual"
let charactersToRemove:[Character] = ["a", "e", "i", "o", "u"]
var filteredSentence = ""

for ch in sentence{
    if charactersToRemove.contains(ch){
        continue
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break
    }
}
filteredSentence


// Fallthrough [Pasar hacia adelante]

let integerToDescribe = 5
var description = "El número \(integerToDescribe) es"

switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " un número primo y"
    fallthrough //Nos permite avanzar y no detenernos
default:
    description += " un número entero"
}
print(description)


// Uso de return y guard

var people = ["name": "Juan Gabriel", "age": 31, "isMale": true] as [String : Any]

func testUserValidation(person:[String: Any]) {
    guard let surname = person["name"] else {
        print("El Apellido es desconocido")
        return
    }
    //aqui existe surname
    print(surname)
    guard let age = person["age"] else{
        return
    }
    print("La edad de la persona es \(age)")
}

testUserValidation(person: people)

// Available en API: Manejo de versiones

if #available(iOS 12, macOS 10.12, *){
    //Ejecutar las acciones a lo iOS+, a los macOS12+
}else {
    //Mantener el codigo viejo con versiones anteriores de iOS, macOS..
}














