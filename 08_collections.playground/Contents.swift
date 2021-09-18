import UIKit

//Array
//Conjuntos
//Diccionarios

//ARRAY
var someInts = [Int]()
someInts.count
someInts.append(32)
someInts.count
someInts = []
someInts.count

var someDoubles = Array(repeating: 3.141592, count: 3)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)
moreDoubles.count

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList : [String] = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count

//Ejercicio

var family = ["Profesor Utonio", "Bombón", "Burbuja", "Bellota"]
family.count

//Acceder y modificar elementos de un Array

if shoppingList.isEmpty {
    print("La lista de la compra esta vacia")
} else {
    print("Mandemos a Ricardo a comprar")
}

shoppingList.append("Coca cola")
shoppingList.count

shoppingList += ["Totopos", "Guacamole", "Pico de Gallo"]
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"]

let papper = shoppingList.remove(at: 1)
shoppingList

let _ = shoppingList.removeLast()
shoppingList

//Iterando en Arrays

for item in shoppingList {
    print(item)
}

for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx+1): \(item) ")
}

print(" ")

var daysofweek : [String] = ["Monday", "Tusday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]


for (idx, item) in daysofweek.enumerated() {
    print("Day \(idx+1): \(item)")
}

//Conjunto (set)

var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")
letters

var favoriteGames : Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
favoriteGames.count

if favoriteGames.isEmpty{
    print("No hay juegos favoritos")
}

favoriteGames.insert("Metal Gear")

if let removedGame = favoriteGames.remove("Farcry"){
    print("Se elimino de la lista \(removedGame)")
}

if favoriteGames.contains("Metal Gear"){
    print("Me encanta ese juego")
}

for vg in favoriteGames {
    print(vg)
}

//Ejercicio

var favoriteMovies : Set<String> = ["Avatar", "Un Novato en Apuros", "Interestelar"]
favoriteMovies.count

favoriteMovies.insert("Avatar")

//Iteraciones y Operaciones sobre conjuntos

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

//A union B = Elementos que son o bien de A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted()
//A interseccion B = elementos que son a la vez de A y de B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B = elementos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

// A + B = (A+B) unicon (B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals:Set = ["🐶", "😹"]
let farmAnimals:Set = ["🐮", "🐔", "🐑", "🐶", "😹"]
let cityAnimals:Set = ["🐁", "🕊"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
// A y B son disjuntos si su interseccion es vacia
farmAnimals.isDisjoint(with: cityAnimals)


//Diccionarios [K1:V1, K2:V2, ...]

var namesOfIntegers = [Int : String]()
namesOfIntegers[15] = "quince"
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca"]

airports.count

airports.isEmpty
airports["LHR"] = "London City Airport"
airports
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aereopuerto tenia antiguamente el nombre de \(oldValue)")
}
airports

if let airportName = airports["DUB"]{
    print("El aereopuerto de DUB es \(airportName)")
}

airports["PMI"] = nil
airports

if let removedAirpot =
    airports.removeValue(forKey: "DUB"){
    //usar la variable removed airpoty
}
airports





