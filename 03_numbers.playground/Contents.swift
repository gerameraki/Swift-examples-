import UIKit

let age = 31

let age2 : UInt8 = 31

let minValue = UInt8.min // 2^0-1
let maxValue = UInt8.max //2^8-1

//Floats y Doubles

let f1: Float = 3.14159265
let d1: Double = 3.14159265

let meaningOfLife = 42 // int
let pi = 3.14159 // Double
let anotherPi = 3 + 0.14159 // Double

//Literales numericos

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexaInteger = 0x11

//Convertir tipos de datos

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber

//Type Alias

typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max // UInt16.max


