import Foundation

// Function to get user input
func getUserInput(prompt: String) -> String {
    print(prompt, terminator: "")
    return readLine() ?? ""
}

// Movie database
struct Movie {
    let title: String
    let genre: String
    let region: String  // "Hollywood" or "Bollywood"
    let mood: String
    let relatedFlavors: [String]  // Ice cream flavors that might match this movie
}

// Create an array of 50 diverse movies (Hollywood and Bollywood)
let allMovies: [Movie] = [
    // Hollywood Movies
    Movie(
        title: "Frozen", genre: "Animation", region: "Hollywood", mood: "Whimsical",
        relatedFlavors: ["Vanilla", "Blueberry", "Chocolate Chip"]),
    Movie(
        title: "The Avengers", genre: "Action", region: "Hollywood", mood: "Exciting",
        relatedFlavors: ["Rocky Road", "Chocolate", "Cookie Dough"]),
    Movie(
        title: "La La Land", genre: "Musical", region: "Hollywood", mood: "Romantic",
        relatedFlavors: ["Strawberry", "Cherry", "Vanilla"]),
    Movie(
        title: "Jurassic Park", genre: "Adventure", region: "Hollywood", mood: "Thrilling",
        relatedFlavors: ["Mint Chocolate Chip", "Chocolate"]),
    Movie(
        title: "The Lion King", genre: "Animation", region: "Hollywood", mood: "Heartwarming",
        relatedFlavors: ["Mango", "Banana", "Vanilla"]),
    Movie(
        title: "Harry Potter series", genre: "Fantasy", region: "Hollywood", mood: "Magical",
        relatedFlavors: ["Butterscotch", "Chocolate Fudge"]),
    Movie(
        title: "Inception", genre: "Sci-Fi", region: "Hollywood", mood: "Mind-bending",
        relatedFlavors: ["Coffee", "Pistachio", "Dark Chocolate"]),
    Movie(
        title: "The Pursuit of Happyness", genre: "Drama", region: "Hollywood",
        mood: "Inspirational", relatedFlavors: ["Vanilla", "Caramel"]),
    Movie(
        title: "Finding Nemo", genre: "Animation", region: "Hollywood", mood: "Adventurous",
        relatedFlavors: ["Blueberry", "Bubblegum"]),
    Movie(
        title: "Toy Story", genre: "Animation", region: "Hollywood", mood: "Nostalgic",
        relatedFlavors: ["Cookie Dough", "Rainbow Sherbet"]),
    Movie(
        title: "The Breakfast Club", genre: "Drama", region: "Hollywood", mood: "Reflective",
        relatedFlavors: ["Chocolate Chip", "Vanilla"]),
    Movie(
        title: "Forrest Gump", genre: "Drama", region: "Hollywood", mood: "Inspiring",
        relatedFlavors: ["Chocolate", "Strawberry", "Vanilla"]),
    Movie(
        title: "The Matrix", genre: "Sci-Fi", region: "Hollywood", mood: "Mind-bending",
        relatedFlavors: ["Dark Chocolate", "Mint"]),
    Movie(
        title: "Up", genre: "Animation", region: "Hollywood", mood: "Emotional",
        relatedFlavors: ["Rainbow Sherbet", "Vanilla"]),
    Movie(
        title: "Interstellar", genre: "Sci-Fi", region: "Hollywood", mood: "Awe-inspiring",
        relatedFlavors: ["Coffee", "Dark Chocolate"]),
    Movie(
        title: "The Shawshank Redemption", genre: "Drama", region: "Hollywood",
        mood: "Inspirational", relatedFlavors: ["Rum Raisin", "Vanilla"]),
    Movie(
        title: "Wonder Woman", genre: "Action", region: "Hollywood", mood: "Empowering",
        relatedFlavors: ["Cherry", "Chocolate"]),
    Movie(
        title: "Coco", genre: "Animation", region: "Hollywood", mood: "Touching",
        relatedFlavors: ["Chocolate", "Cinnamon", "Dulce de Leche"]),
    Movie(
        title: "The Princess Bride", genre: "Fantasy", region: "Hollywood", mood: "Whimsical",
        relatedFlavors: ["Strawberry", "Vanilla"]),
    Movie(
        title: "Back to the Future", genre: "Sci-Fi", region: "Hollywood", mood: "Fun",
        relatedFlavors: ["Chocolate Chip", "Vanilla"]),
    Movie(
        title: "The Greatest Showman", genre: "Musical", region: "Hollywood", mood: "Uplifting",
        relatedFlavors: ["Strawberry", "Cotton Candy"]),
    Movie(
        title: "Spider-Man: Into the Spider-Verse", genre: "Animation", region: "Hollywood",
        mood: "Vibrant", relatedFlavors: ["Bubblegum", "Tutti Frutti"]),
    Movie(
        title: "Ratatouille", genre: "Animation", region: "Hollywood", mood: "Inspiring",
        relatedFlavors: ["Vanilla", "Chocolate"]),
    Movie(
        title: "The Sound of Music", genre: "Musical", region: "Hollywood", mood: "Uplifting",
        relatedFlavors: ["Vanilla", "Strawberry"]),
    Movie(
        title: "E.T. the Extra-Terrestrial", genre: "Sci-Fi", region: "Hollywood",
        mood: "Heartwarming", relatedFlavors: ["Chocolate", "Caramel"]),

    // Bollywood Movies
    Movie(
        title: "Dilwale Dulhania Le Jayenge", genre: "Romance", region: "Bollywood",
        mood: "Romantic", relatedFlavors: ["Kesar Pista", "Vanilla", "Rose"]),
    Movie(
        title: "3 Idiots", genre: "Comedy-Drama", region: "Bollywood", mood: "Inspiring",
        relatedFlavors: ["Mango", "Butterscotch"]),
    Movie(
        title: "Lagaan", genre: "Sports Drama", region: "Bollywood", mood: "Inspiring",
        relatedFlavors: ["Kulfi", "Mango"]),
    Movie(
        title: "Queen", genre: "Adventure", region: "Bollywood", mood: "Empowering",
        relatedFlavors: ["Chocolate", "Coffee"]),
    Movie(
        title: "PK", genre: "Comedy-Drama", region: "Bollywood", mood: "Thought-provoking",
        relatedFlavors: ["Mango", "Pista"]),
    Movie(
        title: "Zindagi Na Milegi Dobara", genre: "Adventure", region: "Bollywood",
        mood: "Refreshing", relatedFlavors: ["Blueberry", "Mango"]),
    Movie(
        title: "Bajrangi Bhaijaan", genre: "Drama", region: "Bollywood", mood: "Heartwarming",
        relatedFlavors: ["Vanilla", "Mango"]),
    Movie(
        title: "Taare Zameen Par", genre: "Drama", region: "Bollywood", mood: "Emotional",
        relatedFlavors: ["Chocolate", "Butterscotch"]),
    Movie(
        title: "Barfi!", genre: "Comedy-Drama", region: "Bollywood", mood: "Heartwarming",
        relatedFlavors: ["Strawberry", "Pista"]),
    Movie(
        title: "Dangal", genre: "Sports Drama", region: "Bollywood", mood: "Inspiring",
        relatedFlavors: ["Kulfi", "Vanilla"]),
    Movie(
        title: "Dil Chahta Hai", genre: "Comedy-Drama", region: "Bollywood", mood: "Nostalgic",
        relatedFlavors: ["Butterscotch", "Chocolate"]),
    Movie(
        title: "Wake Up Sid", genre: "Coming of Age", region: "Bollywood", mood: "Relatable",
        relatedFlavors: ["Coffee", "Chocolate"]),
    Movie(
        title: "Jab We Met", genre: "Romance", region: "Bollywood", mood: "Uplifting",
        relatedFlavors: ["Strawberry", "Vanilla"]),
    Movie(
        title: "Andhadhun", genre: "Thriller", region: "Bollywood", mood: "Suspenseful",
        relatedFlavors: ["Dark Chocolate", "Coffee"]),
    Movie(
        title: "Koi Mil Gaya", genre: "Sci-Fi", region: "Bollywood", mood: "Heartwarming",
        relatedFlavors: ["Chocolate", "Strawberry"]),
    Movie(
        title: "Chak De! India", genre: "Sports Drama", region: "Bollywood", mood: "Patriotic",
        relatedFlavors: ["Vanilla", "Butterscotch"]),
    Movie(
        title: "Bhool Bhulaiyaa", genre: "Horror-Comedy", region: "Bollywood", mood: "Entertaining",
        relatedFlavors: ["Chocolate Chip", "Mango"]),
    Movie(
        title: "Hera Pheri", genre: "Comedy", region: "Bollywood", mood: "Hilarious",
        relatedFlavors: ["Pistachio", "Butterscotch"]),
    Movie(
        title: "Secret Superstar", genre: "Musical Drama", region: "Bollywood", mood: "Inspiring",
        relatedFlavors: ["Butterscotch", "Mango"]),
    Movie(
        title: "Swades", genre: "Drama", region: "Bollywood", mood: "Patriotic",
        relatedFlavors: ["Kulfi", "Saffron"]),
    Movie(
        title: "Piku", genre: "Comedy-Drama", region: "Bollywood", mood: "Heartwarming",
        relatedFlavors: ["Raspberry", "Vanilla"]),
    Movie(
        title: "Kabhi Khushi Kabhie Gham", genre: "Family Drama", region: "Bollywood",
        mood: "Emotional", relatedFlavors: ["Kesar Pista", "Vanilla"]),
    Movie(
        title: "The Lunchbox", genre: "Romance", region: "Bollywood", mood: "Subtle",
        relatedFlavors: ["Cardamom", "Vanilla"]),
    Movie(
        title: "Munna Bhai M.B.B.S.", genre: "Comedy", region: "Bollywood", mood: "Heartwarming",
        relatedFlavors: ["Butterscotch", "Chocolate"]),
    Movie(
        title: "Kaho Naa Pyaar Hai", genre: "Romance", region: "Bollywood", mood: "Romantic",
        relatedFlavors: ["Strawberry", "Vanilla"]),
]

func getMovieRecommendation() {

    var favMovie = getUserInput(prompt: "Let us know your Favourite movie: ")
    var favIceCream = getUserInput(prompt: "What's your Favourite Ice-Cream: ")

    var recommendations: [Movie] = []

    if let char1 = favMovie.first, let char2 = favIceCream.first {

    }

}
