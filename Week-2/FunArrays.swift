import Foundation

// ARRAYS
var superheroes = ["Spider-Man", "Iron Man", "Black Panther"]


// Getting Spider-Man (he's at position 0)
print(superheroes[0])  // Shows: Spider-Man

// Adding a new superhero to the end of the list
superheroes.append("Thor")

// Now our list has 4 superheroes
print(superheroes.count)  // Shows: 4

superheroes.remove(at: 3)
