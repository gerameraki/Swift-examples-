import UIKit

let b = 10
var a = 5

a = b

let (x,y) = (1,2)

if a == b {
    print("Los valores de a y b son iguales")
}

1+2
5-3
2*3
6/2

"Hello " + "World"

9%4

let five = 5
let minusFive = -five
let plusFive = -minusFive

var number = 5
number += 3
number -= 2

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Ricardo Celis"

if name == "Juan Gabriel" {
    print("bienvenido \(name), eres invitado a la fiesta")
} else {
    print("Cuidado, ha aparecido un \(name) salvaje.")
}

(1, "Juan Gabriel") < (2, "Ricardo Celis")
(3, "Juan Gabriel") < (3, "Ricardo Celis")
(3, "Ricardo") < (3, "Juan Gabriel")
(4, "perro") == (4, "perro")

(24, "Gerardo Martinez") < (31, "Juan Gabriel")
(24, "Gerardo Martinez") > (31, "Juan Gabriel")
(24, "Gerardo Martinez") == (31, "Juan Gabriel")

//Operaciones Ternarias
let contentHeight = 40
var hasImage = true
var rowHeight = 0

//if hasImage {
//    rowHeight = contentHeight + 50
//} else {
//    rowHeight = contentHeight + 10
//}

rowHeight = contentHeight + (hasImage ? 50 : 10)


//Operador Nil Coalescing
let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String? = "green"

var colorNameToUse = userColorName ?? defaultColorName


let defaultUserName = "Juana la Alpaca"
var userName: String? = "Paco el Chato"

var userN = userName ?? defaultUserName

//Rangos

for idx in 1...5 {
    print (idx)
}

for idx in 1..<5 {
    print(idx)
}

let names = ["Ricardo", "Juan Gabriel", "Pedro"]
for i in 0..<names.count{
    print("La persona \(i+1) se llama \(names[i])")
}

for name in names[1...]{
    print(name)
}

for name in names[...2]{
    print(name)
}

//Operadores logicos

let allowEntry = false

if !allowEntry{
    print("Acceso Denegado")
}

let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan {
    print("Bienvenido a la empresa")
}else {
    print("Acceso Denegado")
}

let hasMoney = true
let hasInvitation = false

if hasInvitation || hasMoney {
    print("Bienvenido a la fiesta")
} else {
    print("No eres bienvenido aquí")
}

let tengoPan = true
let tengoQueso = false
let tengoJamon = true

if tengoPan && tengoQueso && tengoJamon {
    print("Genial, podemos preparar un sandwich")
} else {
    print("No puedes preparar un sandwich, pero quiza la persona que conteste este comentario te de el ingrediente que te hace falta")
}

