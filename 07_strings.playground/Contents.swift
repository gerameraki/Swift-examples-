import UIKit

let someString = "Soy un string cualquiera"
let multiLineString = """
    Soy Gerardo Martinez \
    Estamos haciendo el curso de Swift
    Un saludo, paz y amor...
    """
print(multiLineString)

let wiseWords = "\"La imaginación es más importante que el saber\" - Albert Einstein"

let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

//Inicializacion y mutabilidad

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nada que ver aqui")
} else {
    print("Bueno, al parecer aqui hay algo")
}

var newSomeString = "Un Caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

var a = "A"
var b = "B"

print("a vale \(a) y el valor de b vale \(b)")
b = a
print("a vale \(a) y el valor de b vale \(b)")
b = "C"
print("a vale \(a) y el valor de b vale \(b)")
a = "D"
print("a vale \(a) y el valor de b vale \(b)")

//Characters
let name = "Juan Gabriel 😎"
for ch in name {
    print(ch)
}
print(name.count)

let exclamationMark : Character = "!"

let nameChars: [Character] = ["j", "u", "a", "n"]
var nameString = String(nameChars)

nameString.append(exclamationMark)

//Indices de String

let greeting = "Hola, que tal?"
greeting[greeting.startIndex]

greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for idx in greeting.indices{
    print("\(greeting[idx]) - \(idx)")
}

var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome

let range = welcome.index(welcome.endIndex, offsetBy: -7)..<welcome.endIndex
welcome.removeSubrange(range)
welcome

//Substrings

greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]

let newString = String(firstPart)

//Prefijos y Sufijos

let newGreeting = "Hola, soy Juan Gabriel"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("Adios")

let collection = [
    "Act 1 Scene 1","Act 1 Scene 2", "Act 1 Scene 3","Act 1 Scene 4","Act 1 Scene 5",
    "Act 2 Scene 1", "Act 2 Scene 2", "Act 2 Scene 3",
    "Act 3 Scene 1", "Act 3 Scene 2"
]

var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}

print("El numero de escenas del acto 1 es: \(act1SceneCount)")

//Representaciones Unicode

let ghost = "!!Fantasmas!! 👻"

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}
print(" ")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}


