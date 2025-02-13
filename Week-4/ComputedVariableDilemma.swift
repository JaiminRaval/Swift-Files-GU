// Original "House" (base struct)
struct House {
    let address: String
    let squareFeet: Double

    init(address: String, squareFeet: Double) {
        self.address = address
        self.squareFeet = squareFeet
    }
}

// Extension 1: Adding computed properties
// Think of this as installing smart home features - adding new capabilities
// without changing the original structure
extension House {
    var priceEstimate: Double {
        // Assuming $200 per square foot
        return squareFeet * 200
    }

    var sizeCategory: String {
        switch squareFeet {
        case 0...1500: return "Cozy"
        case 1501...2500: return "Medium"
        default: return "Spacious"
        }
    }
}

// Extension 2: Adding methods
// Like adding new rooms or features to your house
extension House {
    func calculateTaxes(taxRate: Double) -> Double {
        return priceEstimate * (taxRate / 100)
    }

    mutating func expandHouse(additionalSquareFeet: Double) {
        // Note: This won't work because squareFeet is a let constant
        // This demonstrates a limitation of extensions
        // squareFeet += additionalSquareFeet
    }
}
