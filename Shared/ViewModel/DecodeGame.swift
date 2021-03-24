//
//  DecodeGame.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/22/21.
//

import Foundation

public class DecodeGame: ObservableObject {
    @Published var games = [GameViewModel]()
    
    
    init(){
        load()
    }
    
    
    func load() {
        
        let urlFestival = URL(string: "https://festivaldujeu.herokuapp.com/api/festival/current")!
        var requestFestival = URLRequest(url: urlFestival)
        requestFestival.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: requestFestival) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSONraw = try? JSONSerialization.jsonObject(with: data, options: [])
            guard let responseJSON = responseJSONraw as? [String: Any] else {
                print("cant serialize")
                return
            }
            print("n\n\n\n\n\n Response :", responseJSON) // Current Festival
            
            guard let gameBookedList = responseJSON["gameBookedList"] as? [[String: Any]] else {
                print("Cant get games of the current festival")
                return
            }
            var tName: String
            var tPublisher: String
            var tDuration: Int
            var tNbPlayersMin : Int
            var tNbPlayersMax : Int
            var tAgeMin : Int
            var tCategory : String
            var tNotice : String
            var tDescription : String
            var tPrototypeGame : Bool
            var tZone : String
            // TODO: For each game
            if let gameBooked = gameBookedList[0] as? [String: Any] // To delete and replace with each game
            {
                tZone = gameBooked["zone"] as! String
                guard let exhibitor = gameBooked["exhibitorId"] as? [String: Any] else {
                    print("Cant get the exhibitor infos from gameBooked ",gameBooked)
                    return
                }
                tPublisher = exhibitor["name"] as! String
                guard let game = gameBooked["gameId"] as? [String: Any] else {
                    print("Cant get the game infos from gameBooked ", gameBooked)
                    return
                }
                tName = game["name"] as! String
                print("name :", tName)
                // Then create a new game with temp values and push it to self.games
            }
            //print(self.games)
            
            // old code, to delete when finished
            /*
            var festivalId = ""
            if let fId = responseJSON["_id"] as? String {
                festivalId = fId.trimmingCharacters(in: .whitespacesAndNewlines) //Remove whitespace
            } else {
                print("cant get Id") //TODO : handle this case properly
            }
            print( "\n\n\n\n\n\nFestival id : ", festivalId)
            
            if let gameBookedList = responseJSON["gameBookedList"] as? [[String: Any]] {
                var isCallbackDone = true
                if let isCBDone = gameBookedList[0]["isCallbackDone"] as? Bool {
                    isCallbackDone = isCBDone
                    print("PRINT2, isCallBackDone :",isCallbackDone)
                } else {
                    print("cant get isCallbackDone") //TODO : handle this case properly
                }
            } else {
                print("cant get gameBookedList") //TODO : handle this case properly
            }
            print( "\n\n\n\n\n\nFestival id : ", festivalId)
            */
            
        }
        task.resume()
    }
}
