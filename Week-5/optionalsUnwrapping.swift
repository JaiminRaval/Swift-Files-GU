// First, let's create some optional values to work with
var username: String? = "Alex"
var age: Int? = nil
var score: Int? = 100

// 1. Optional Binding (if let) - Safest approach
// This creates a new constant that only exists if the optional has a value
if let safeUsername = username {
    print("Hello, \(safeUsername)!")
} else {
    print("No username found")
}

// 2. Guard Statement - Early exit pattern
// Useful in functions when you want to exit early if optional is nil
func greetUser() {
    guard let safeUsername = username else {
        print("Please provide a username")
        return
    }
    // safeUsername is available in the rest of the function
    print("Welcome back, \(safeUsername)!")
}

// 3. Nil Coalescing Operator (??) - Provide a default value
// If the optional is nil, use the default value instead
let playerScore = score ?? 0
let playerAge = age ?? 18

// 4. Optional Chaining - Safely access properties and methods
// Creates a chain of optional values that returns nil if any part is nil
struct User {
    var name: String?
    func getGreeting() -> String {
        return "Hello!"
    }
}

var currentUser: User? = User(name: "Bob")
let greeting = currentUser?.name?.uppercased()  // Returns optional "BOB"
let message = currentUser?.getGreeting()  // Returns optional "Hello!"

// 5. Force Unwrapping (!) - Use with extreme caution
// Only use when you are 100% sure the optional has a value
if score != nil {
    print("Your score is \(score!)")
}

// 6. Multiple Optional Binding
// Unwrap multiple optionals at once
if let name = username, let userScore = score {
    print("\(name)'s score is \(userScore)")
}
