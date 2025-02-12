//MARK: -   Optionals in swift
var data:Int?
var myData: Int

func convertToInt(input: String) -> Int? {
    // Returns nil if string can't be converted to integer
    return Int(input)
}

data = convertToInt(input: "22")
print(data!)
data = convertToInt(input: "1") //will give error
print(data!)
data = convertToInt(input: "qwertyu") //will give error
print(data)


myData = data!  //using '!' you can unwrap optionals
print(myData)

//More ways to unwrap optionals:
