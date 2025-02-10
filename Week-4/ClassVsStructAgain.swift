// MARK: - Structure (Value Type)
struct Car {
    var brand: String
    var model: String
    var year: Int

    // Structs have automatic memberwise initializers
    // init is only needed if you want custom initialization
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
