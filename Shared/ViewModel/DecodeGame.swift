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
        let url = URL(string: "https://festivaldujeu.herokuapp.com/api/gameBooking/allGames")!
    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([GameViewModel].self, from: d)
                    DispatchQueue.main.async {
                        self.games = decodedLists
                        print("OK")
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
