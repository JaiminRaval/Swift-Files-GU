//  This week we will be focusing on building logical skills and brush up our reasoning powers!

//  Challenge title:  FizzBuzz
//  Challenge statement:  Given an Int 'n', return an array of String [1-Indexed] called 'answer' where:-
//      Conditions:
//          answer[i] == "FizzBuzz" IF 'i' is dvisible by 3 and 5
//          answer[i] == "Fizz" IF 'i' is dvisible by 3
//          answer[i] == "Buzz" IF 'i' is dvisible by 5
//          answer[i] == "\(i)" IF of the above conditions are true
//
//  Example-1:
//  Func Input: n = 3
//  Func Oputput: ["1", "2", "Fizz"]
//
//  Example-2:
//  Func Input: n = 5
//  Func Oputput: ["1", "2", "Fizz", "4", "Buzz"]

//  Func Signature
func getFizzBuzz(n: Int) -> [String] {
    var answer: [String] = []

    for i in Range(1...n) {

        if i % 3 == 0 && i % 5 == 0 {
            answer.append("FizzBuzz")
        } else if i % 3 == 0 {
            answer.append("Fizz")
        } else if i % 5 == 0 {
            answer.append("Buzz")
        } else {
            answer.append("\(i)")
        }

    }
    return answer
}

var answer = getFizzBuzz(n: 3)
print("output array = \(answer)")
