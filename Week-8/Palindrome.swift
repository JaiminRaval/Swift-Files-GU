//  Challenge title:  Palindrome Number
//  Challenge statement:  Given an integer x, return true if x is a palindrome, and false otherwise.
//      Conditions:
//          An integer is a palindrome when it reads the same forward and backward.
//          For example, 121 is a palindrome while 123 is not.
//
//  Example-1:
//  Func Input: x = 121
//  Func Oputput: true
//
//  Example-2:
//  Func Input: x = -121
//  Func Output: false
//
//  Example-2:
//  Func Input: x = 10
//  Func Oputput: false
//

func isPalindrome(x: Int) -> Bool {
    let str = String(x)
    let rev = String(str.reversed())
    if str == rev {
        return true
    } else {
        return false
    }
}
