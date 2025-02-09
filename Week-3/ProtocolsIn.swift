// First, let's create our rules (protocol)
protocol GameCharacterRules {
    var name: String { get }
    var health: Int { get set }

    func attack() -> Int
    func makeSound()
}


// Let's create different types of characters that follow these rules
struct Warrior: GameCharacterRules {
    var name: String
    var health: Int
    var swordPower: Int
    func attack() -> Int {
        return swordPower * 2
    }
    func makeSound() {
        print("\(name) says: For glory!")
    }
}


struct Wizard: GameCharacterRules {
    var name: String
    var health: Int
    var magicPower: Int

    func attack() -> Int {
        return magicPower * 3
    }

    func makeSound() {
        print("\(name) says: Abracadabra!")
    }
}


struct Barbarian: GameCharacterRules {
    var name: String

    var health: Int

    func attack() -> Int {
        return 30
    }

    func makeSound() {
        print("qwertyuio")
    }
}


// Calling the protocol functions:
let warrior1 = Warrior(name: "Cyclops", health: 100, swordPower: 10)
warrior1.makeSound()
let damageDone = warrior1.attack()
print(damageDone)

// Calling the protocol functions:
let wizard1 = Wizard(name: "Mystiqe", health: 100, magicPower: 20)
wizard1.makeSound()
let magicDone = wizard1.attack()
print(magicDone)

let barbarian1 = Barbarian(name: "vision", health: 90)
var attack = barbarian1.attack()
print(attack)
barbarian1.makeSound()
