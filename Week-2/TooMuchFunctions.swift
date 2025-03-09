// First, let's create a Character structure
struct GameCharacter {
    var name: String
    var health: Int
    var powerLevel: Int
}

// And a Game class to manage our game
class Game {
    // Simple function (no input, no output)
    func startGame() {
        print("Welcome to the Adventure!")
    }

    // Function with input (parameters)
    func createCharacter(name: String) -> GameCharacter {
        let newCharacter = GameCharacter(name: name, health: 100, powerLevel: 1)
        return newCharacter
    }

    // Function with multiple inputs
    func battle(player: GameCharacter, against enemy: String) {
        print("\(player.name) is fighting against \(enemy)!")
    }

    // Function that returns something (output)
    func calculateDamage(powerLevel: Int) -> Int {
        return powerLevel * 5
    }

    // Function that can change values (mutating)
    func healCharacter(character: GameCharacter) -> GameCharacter {
        var updatedCharacter = character
        updatedCharacter.health += 20
        return updatedCharacter
    }
}

// Let's use these functions!
let game = Game()

// Start the game
game.startGame()

// Create a new character
var player = game.createCharacter(name: "Alex")

// Start a battle
game.battle(player: player, against: "Dragon")

// Calculate battle damage
let damage = game.calculateDamage(powerLevel: player.powerLevel)
print("\(player.name) can do \(damage) damage!")

// Heal the character
player = game.healCharacter(character: player)
print("\(player.name) now has \(player.health) health!")
