//  TASK: Create a simple Calculator where you take two Int as input from user, and then ask what operation to perform on those two Int(+, -, /, x).

func getUserInput(promptText: String) -> String {
    print(promptText, terminator: "")
    return readLine() ?? ""
}

func calcuateInput() -> Int {

    var num1 = Int(getUserInput(promptText: "Enter Number 1: ")) ?? 0
    var num2 = Int(getUserInput(promptText: "Enter Number 2: ")) ?? 0
    var operationSelected = getUserInput(
        promptText: "Select the operation to perform (+, -, /, x):")
    var res = 0

    switch operationSelected {

    case "+":
        res = num1 + num2
        print("Addition of \(num1) and \(num2) = \(res)")
        return res

    case "-":
        res = num1 - num2
        print("Subtraction of \(num1) and \(num2) = \(res)")
        return res

    case "/":
        if num1 != 0 || num2 != 0 {
            res = num1 / num2
            print("Division of \(num1) and \(num2) = \(res)")
            return res

        } else {
            print("can't divide 0, add appropriate Data next time")
            return 0
        }

    case "x":
        res = num1 * num2
        print("Multiplication of \(num1) and \(num2) = \(res)")
        return res

    default:
        print("Invalid Data added")
        return 0
    }
}

//  calling func and getting output, which we stored in variable called "output" and print it out
var output = calcuateInput()
print(output)
