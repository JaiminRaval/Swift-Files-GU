//  We will be taking a deepDive into for loops, while loops in this week

func inRange(num: Int) {

    for i in Range(0...num) {
        print("We are into this loop till: \(i)")
    }

}

func iteration(inputArray: [String]) {

    for i in inputArray {
        print("yes you are not \(i)")
    }

}

func simplyWhile(isTrue: Bool) {

    var cntr = 0
    var loopCntr = isTrue

    while loopCntr {
        print("this while will work till 7, it's now \(cntr)")
        cntr += 1

        if cntr == 7 {
            loopCntr = false
        }
    }

}
