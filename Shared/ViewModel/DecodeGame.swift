//
//  DecodeGame.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/22/21.
//




import Foundation

public class DecodeGame: ObservableObject {

    @Published var games : [GameViewModel] = [GameViewModel]()
    
    init(){
        loadGames()
    }
    
    func loadGames() {
        print("\n\n\n\n\n\n\nin loadGames")
        
        let urlFestival = URL(string: "https://festivaldujeu.herokuapp.com/api/festival/current")!
        var requestFestival = URLRequest(url: urlFestival)
        requestFestival.httpMethod = "GET"
        URLSession.shared.dataTask(with: requestFestival) { data, response, error in
            do {
                guard let data = data, error == nil else {
                    print(error?.localizedDescription ?? "No data")
                    return
                }
                let decodedCurrentFestival = try JSONDecoder().decode(CurrentFestivalData.self, from: data)
                print(decodedCurrentFestival)
            } catch {
                print("Error while decoding")
            }
            //print(self.games)
        }.resume()
    }
}
