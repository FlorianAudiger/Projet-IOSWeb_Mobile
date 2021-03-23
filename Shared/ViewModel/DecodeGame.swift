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
    
    var currentFestivalId = ""
    
    func load() {
        let urlFestival = URL(string: "https://festivaldujeu.herokuapp.com/api/festival/current")!
        var request = URLRequest(url: urlFestival)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                print(responseJSON)            }
        }

        task.resume()
        
        
        
        
        let parameters = ["festivalId":currentFestivalId]
        let urlGames = URL(string: "https://festivaldujeu.herokuapp.com/api/gameBooking/allGames")!
    
        URLSession.shared.dataTask(with: urlGames) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([GameViewModel].self, from: d)
                    DispatchQueue.main.async {
                        self.games = decodedLists
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
