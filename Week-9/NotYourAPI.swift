import Foundation
import FoundationNetworking

//"https://official-joke-api.appspot.com/jokes/random/25"

//  DataModel created based on api
struct JokeModel: Codable {

    let id: Int
    let type: String
    let setup: String
    let punchline: String

}

//    MARK: - native api call function
func fetchJokes() {

    //  URL string
    let urlstr = "https://official-joke-api.appspot.com/jokes/random/25"

    //  Converting URL string to valid URL
    if let url = URL(string: urlstr) {

        //  creating URLSession object
        let session = URLSession.shared

        //  calling the dataTask  Function
        let dataTask = session.dataTask(with: url) { data, response, error in
            //  unwrapping data
            guard let jokeData = data else { return }

            //  Try-Catch error handling
            do {
                let jsonData = try JSONDecoder().decode([JokeModel].self, from: jokeData)

                debugPrint(jsonData)

            } catch (let err) {
                debugPrint("error in decoding: \(err)")
            }

        }
        // Start the network request
        dataTask.resume()

    } else {
        print("url not valid")
    }

}

fetchJokes()
RunLoop.main.run()

//  Current API: https://official-joke-api.appspot.com/jokes/random/25
//  More similar APIs: https://github.com/15Dkatz/official_joke_api

// debug code  --- Ignore ---:
//
//import Foundation
////    MARK: - native api call function
//    func fetchJokes(completion: @escaping(Result<[JokeModel],Error>)-> Void) {

//            let urlstr = "https://official-joke-api.appspot.com/jokes/random/25"

//            if let url = URL(string: urlstr) {

//                let session = URLSession.shared

//                let dataTask = session.dataTask(with: url) { data, response, error in

//                    guard let jokeData = data else { return }

//                    do {
//                        let jsonData = try JSONDecoder().decode([JokeModel].self, from: jokeData)
//                        completion(.success(jsonData))
//                        debugPrint(jsonData)
//                    } catch(let err) {
//                        completion(.failure(err))
//                        debugPrint("error in decoding")
//                    }

//                }
//                // Start the network request
//                dataTask.resume()

//            } else {
//                print("url not valid")
//            }

//        }

//  Current API: https://official-joke-api.appspot.com/jokes/random/25
//  More similar APIs: https://github.com/15Dkatz/official_joke_api
