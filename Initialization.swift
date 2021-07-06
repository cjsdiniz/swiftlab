// #1
struct Fahrenheit {
   var temp: Double
   init() {
     print("Initialization")
     temp = 32.0
   }
}
var f = Fahrenheit()
print(f.temp)

// #2
struct Celsius {
  var tempInCelsius: Double
  init(fromFahrenheit fahrenheit: Double) {
    print("Initializing from Fahrenheit")
    tempInCelsius = (fahrenheit - 32.0) / 1.8
  }
  init(fromKelvin kelvin: Double) {
    print("Initializing from Kelvin")
    tempInCelsius = kelvin - 273.15
  }
}
let boilingPoint = Celsius(fromFahrenheit: 212.0)
let freezingPoint = Celsius(fromKelvin: 273.15)

// #3
struct Size {
  var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)
print("Width: \(twoByTwo.width)")
print("Height: \(twoByTwo.height)")

// #4
class Size2 {
  var width:Double, height:Double
  init(w:Double, h:Double) {
    width = w
    height = h
  }
}
let twoByTwo2 = Size2(w: 2.0, h: 2.0)
print("Width: \(twoByTwo.width)")
print("Height: \(twoByTwo.height)")

// #5
class SomeClass {
   required init() {
     print("This initializer is required")
   }
}

let s = SomeClass()

// #6
// class SomeClass {
//    required init() {
//      print("This initializer is required")
//    }
// }

class SomeSubclass: SomeClass {
   required init() {
     print("Subclass initializer must be required")
   }
}

let ss = SomeSubclass()