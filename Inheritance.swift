// #1
class Vehicle {
  var currentSpeed = 0.0
  var desc: String {
    return "traveling at \(currentSpeed) mph"
  }
  func makeNoise() {
    print("Making some noise")
  }
}

var v = Vehicle()
print(v.desc)
v.makeNoise()

// #2
class Bicycle: Vehicle {
   var hasBasket = false
}

class Tandem: Bicycle {
   var currNumOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currNumOfPassengers = 2
tandem.currentSpeed = 20.0
print("Tandem: \(tandem.desc)")

class Car: Vehicle {
  var gear = 1
  override var desc: String {
    return super.desc + " in gear \(gear)"
  }
}

let c = Car()
print(c.desc)
