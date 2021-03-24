//
//  DecodeGame.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/22/21.
//

import Foundation

public class DecodeGame: ObservableObject {
    @Published var games = [GameViewModel]()
    
    @Published var currentFestivalId = ""
    
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
            print("n\n\n\n\n\n Response :", responseJSON)
            var festivalId = ""
                if let fId = responseJSON["_id"] as? String {
                    festivalId = fId.trimmingCharacters(in: .whitespacesAndNewlines) //Remove whitespace
                } else {
                    print("cant get Id") //TODO : handle this case properly
                }
                print( "\n\n\n\n\n\nFestival id : ", festivalId)
                
                if let gameBookedList = responseJSON["gameBookedList"] as? [[String: Any]] {
                    print("PRINT1")
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
                
            //}
        }
        task.resume()
    }
    
    /*
    func loadGames(currentFestivalId: String) {
        let parameters : [String: Any] = ["festivalId": currentFestivalId]
        let jsonParameters = try? JSONSerialization.data(withJSONObject: parameters)
        let urlGames = URL(string: "https://festivaldujeu.herokuapp.com/api/gameBooking/allGames")!
        var requestGames = URLRequest(url: urlGames)
        requestGames.httpMethod = "GET"
        requestGames.httpBody = jsonParameters
        URLSession.shared.dataTask(with: urlGames) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([GameViewModel].self, from: d)
                    DispatchQueue.main.async {
                        print("parameters : ", parameters)
                        print("festival iD : ", currentFestivalId)
                        print("OK, voici les jeux récupérés :")
                        print(self.games)
                        self.games = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
    }
 */
}
