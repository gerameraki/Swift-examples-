import UIKit

let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = false

if isAged {
    print("Puedes pasar a la fiesta")
} else {
    print("No puedes pasar a la fiesta")
}

//Tuplas

let http404Error = (404, "Página no encontrada")
let (statusCode, statusMessage) = http404Error
print("El código del estado es \(statusCode)")
print("El mensaje del servidor es \(statusMessage)")

let (justStatusCode, _) = http404Error
print("El codigo del estado es \(justStatusCode)")

print("El codifo del error es: \(http404Error.0) y el mensaje es: \(http404Error.1)")

let http200Status = (statusCode: 200, description: "ok")
print("El código del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

let miInformation = (name: "Gera", lastName: "Martinez", age: 25)
print("Mi nombre es \(miInformation.name) \(miInformation.lastName) y tengo \(miInformation.age) años.")

//Optionals y Nil

let possibleAge = "31"
let convertedAge = Int(possibleAge)

var serverResponseCode: Int? = 404 // ?= puede quedar vacia
serverResponseCode = nil

if convertedAge != nil {
    print("La edad del usuario no es nula: \(convertedAge!)")
} else {
    print("La edad del usuario es nula")
}

//Optional Biding

var surverAnswer : String?
surverAnswer = "42"

if let actualAnswer = surverAnswer {
    //Al llegar aquí, surverAnswer != nil
    print("El string \(surverAnswer) es igual a \(actualAnswer)")
} else {
    print("El string \(surverAnswer) es nil..")
}

//Optional Biding mas elaborado

if let firstNumber = Int("4"),
   let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber < 100 {
   print("\(firstNumber) < \(secondNumber) < 100")
}

//Unwrap Implicito

let possibleString : String? = "Un string opcional"
let forceString : String = possibleString!

let assummmedString: String! = "Un string unwrapped de forma implicita a partir de un opcional"
let implicitString: String = assummmedString
