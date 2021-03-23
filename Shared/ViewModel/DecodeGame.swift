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
        var currentFestivalId = ""
        
        let urlFestival = URL(string: "https://festivaldujeu.herokuapp.com/api/festival/current")!
        var requestFestival = URLRequest(url: urlFestival)
        requestFestival.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: requestFestival) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                if let festivalId = responseJSON["_id"] as? String {
                    currentFestivalId = "\"" + festivalId.trimmingCharacters(in: .whitespacesAndNewlines) + "\"" //Remove whitespace
                    print( "\n\n\n\n\n\nFestival id : ", currentFestivalId)
                } else {
                    print("cant get Id") //TODO : handle this case properly
                }
            } else {
                print("cant get response") //TODO : handle this case properly
            }
        }
        task.resume()
        //WAIT UNTIL IT FINISH ?
        
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
                        self.games = decodedLists
                        print("parameters : ", parameters)
                        print("OK, voici les jeux récupérés :")
                        print(self.games)
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
         
    }
}
