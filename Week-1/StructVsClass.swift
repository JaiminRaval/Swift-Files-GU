// MARK: - Structure (Value Type)
struct Car {
    var brand: String
    var model: String
    var year: Int

    mutating func updateYear(to newYear: Int) {
        year = newYear  // 'mutating' keyword required for modifying struct properties
    }
}

// MARK: - Class (Reference Type)
class Vehicle {
    var brand: String
    var model: String
    var year: Int

    // Classes require explicit initializers
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }

    func updateYear(to newYear: Int) {
        year = newYear  // No 'mutating' keyword needed
    }
}

let car1 = Vehicle(brand: "Porsche", model: "911", year: 2022)
let car2 = car1
car1.updateYear(to: 2024)
print(car1.year)
print(car2.year)

var sCar1 = Car(brand: "Porsche", model: "911", year: 2022)
var sCar2 = sCar1
sCar2.updateYear(to: 2024)
print(sCar1.year)
print(sCar2.year)

// MARK: - Demonstration
func demonstrateValueVsReference() {
    // Structure Example (Value Type)
    var car1 = Car(brand: "Toyota", model: "Camry", year: 2020)
    var car2 = car1  // Creates a complete copy

    car2.updateYear(to: 2021)
    print("Car1 year: \(car1.year)")  // Output: 2020 (unchanged)
    print("Car2 year: \(car2.year)")  // Output: 2021 (only car2 changed)

    // Class Example (Reference Type)
    let vehicle1 = Vehicle(brand: "Honda", model: "Civic", year: 2020)
    let vehicle2 = vehicle1  // Both point to same instance

    vehicle2.updateYear(to: 2021)
    print("Vehicle1 year: \(vehicle1.year)")  // Output: 2021 (both changed)
    print("Vehicle2 year: \(vehicle2.year)")  // Output: 2021 (both changed)

    // Memory location comparison for class instances
    print(vehicle1 === vehicle2)  // Output: true (same instance)
}

// Run the demonstration
demonstrateValueVsReference()

//MARK: -   Optionals in swift
var data: Int?
var myData: Int

func convertToInt(input: String) -> Int? {
    // Returns nil if string can't be converted to integer
    return Int(input)
}

data = convertToInt(input: "22")
print(data!)
data = convertToInt(input: "1")
print(data!)
//data = convertToInt(input: "qwertyu")
//print(data)

myData = data!
print(myData)
