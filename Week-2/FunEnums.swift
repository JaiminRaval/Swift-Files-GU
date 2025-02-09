// MARK: - Enums
enum CharacterColor {
    case red
    case blue
    case green
}

// Let's create a game character
struct GameCharacter {
    var name: String
    var clothingColor: CharacterColor
}

// Making a character with a blue outfit
var player = GameCharacter(name: "Alex", clothingColor: .blue)

// We can change the color later, but only to our allowed colors
//player.clothingColor = .red

// This would show us what color the character is wearing
func describeOutfit() {

    var colorArray: [GameCharacter] = []

    switch player.clothingColor {
    case .red:
        print("\(player.name) is wearing a cool red outfit!")
    case .blue:
        print("\(player.name) is wearing an awesome blue outfit!")
    case .green:
        print("\(player.name) is wearing a super green outfit!")
    }
}

describeOutfit()  // This will print: "Alex is wearing a cool red outfit!"
