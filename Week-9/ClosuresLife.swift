import Foundation

// 1. Basic Closure Definition
// Think of a closure like a portable function - a block of code you can pass around and execute later
func explainBasicClosure() {
    // A simple closure that greets someone
    let greet = { (name: String) -> String in
        return "Hello, \(name)! 👋"
    }

    // Using the closure
    print(greet("Swift Learner"))
}

// 2. Capturing Values - Closure's Memory Magic
func counterClosure() {
    // A closure that remembers its past
    func createCounter() -> () -> Int {
        var count = 0

        // This closure 'captures' the count variable
        let counter = {
            count += 1
            return count
        }

        return counter
    }

    // Create two independent counters
    let counterA = createCounter()
    let counterB = createCounter()

    print("Counter A:")
    print(counterA())  // 1
    print(counterA())  // 2

    print("Counter B:")
    print(counterB())  // 1
    print(counterB())  // 2
}
