// String to Int
func StrToInt() {
    print("🔄 String Conversions 🔄")

    let stringNumber = "42"
    // This uses optional binding (if let) because conversion might fail
    if let convertedToInt = Int(stringNumber) {
        print("String \"\(stringNumber)\" to Int: \(convertedToInt)")

    } else {
        print("Couldn't convert \"\(stringNumber)\" to Int")
    }

}

func StrToFD() {
    let stringDecimal = "3.14159"
    // This uses optional binding (if let) because conversion might fail
    if let convertedToFloat = Float(stringDecimal) {
        print("String \"\(stringDecimal)\" to Float: \(convertedToFloat)")
    }
    // This uses optional binding (if let) because conversion might fail
    if let convertedToDouble = Double(stringDecimal) {
        print("String \"\(stringDecimal)\" to Double: \(convertedToDouble)")
    }
}

func NumericConversions() {
    print("\n🔢 Numeric Conversions 🔢")

    // Int to other numeric types
    let intValue = 42
    // This does NOT uses optional binding (if let) because conversion will not fail
    let intToFloat = Float(intValue)
    let intToDouble = Double(intValue)
    print("Int \(intValue) to Float: \(intToFloat)")
    print("Int \(intValue) to Double: \(intToDouble)")

    // Float/Double to Int (truncates decimal part)
    let floatValue: Float = 3.99
    let floatToInt = Int(floatValue)
    print("Float \(floatValue) to Int: \(floatToInt) (decimal part is truncated)")

    //// Using rounded() to get proper rounding
    //let roundedToInt = Int(floatValue.rounded())
    //print("Float \(floatValue) rounded to Int: \(roundedToInt)")
}
