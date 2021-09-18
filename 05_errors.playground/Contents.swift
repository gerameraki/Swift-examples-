import UIKit

func canThrowError() throws{
    //Avisamos que algo puede salir mal con throws
}

do {
    try canThrowError()
    //Si llegamos aquí, no ha habido error
} catch {
    //Si llegamos aquí, algo se rompió...
}

//Ejemplo del tryCatch
func makeSandwich() throws {
    
}

do {
    try makeSandwich()
    //Me comi el sandwich
} catch {
    //Tengo hambre porque no pude comer el sandwich..
}

// Aserciones (debug) y Precondiciones (build)
let age = 5
//assert(age>=0, "La edad de una persona no puede ser negativa")

if age > 10 {
    print("Puedes subir a la montaña rusa")
} else if age >= 0 {
    print("Eres demasiado pequeño para subir a la montaña rusa")
} else {
    assertionFailure("La edad de una persona no puede ser negativa")
}

