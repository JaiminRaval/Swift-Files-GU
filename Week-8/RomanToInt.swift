//  Challenge title:  Roman Number to Integer
//  Challenge statement:  Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

//  Symbol       Value
//  I             1
//  V             5
//  X             10
//  L             50
//  C             100
//  D             500
//  M             1000
//
//  For example, 2 is written as II in Roman numeral, just two ones added together.
//  12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
//
//      I can be placed before V (5) and X (10) to make 4 and 9.
//      X can be placed before L (50) and C (100) to make 40 and 90.
//      C can be placed before D (500) and M (1000) to make 400 and 900.
//      Given a roman numeral, convert it to an integer.
//
//
//
//
//  Example-1:
//  Func Input: s = "III"
//  Func Oputput: 3
//  Explanation: III = 3.
//
//  Example-2:
//  Func Input: s = "LVIII"
//  Func Oputput: 58
//  Explanation: L = 50, V= 5, III = 3.
//

func romanToInt(str: String) -> Int {
    var res = 0
    let roman: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000,
    ]

    let chars = Array(str)
    for i in 0..<chars.count - 1 {
        if roman[chars[i]]! < roman[chars[i + 1]]! {
            res -= roman[chars[i]]!
        } else {
            res += roman[chars[i]]!
        }
    }

    return res + roman[chars[chars.count - 1]]!
}
