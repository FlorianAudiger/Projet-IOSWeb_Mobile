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
                let bookedGames = decodedCurrentFestival.gameBookedList
                var tname : String
                var tpublisher: String
                var tduration: Int
                var tnbPlayersMin: Int
                var tnbPlayersMax: Int
                var tageMin: Int
                var tcategory: String
                var tnotice: String
                var tdescription: String
                var tprototypeGame: Bool
                var tzone: String
                for game in bookedGames {
                    if let game = game.gameId{ // Si le bookedGame est bien associé à un game
                        tname = game.name
                        tageMin = game.ageMin ?? 0
                        tduration = game.duration ?? 0
                        tnbPlayersMin = game.nbPlayerMin ?? 0
                        tnbPlayersMax = game.nbPlayerMax ?? 0
                        tcategory = game.category ?? "category unknown"
                        tnotice = game.notice ?? "no notice"
                        tdescription = game.description ?? "no description"
                        tprototypeGame = game.prototypeGame ?? false
                    } else {
                        tname = "name unknown"
                        tageMin = 0
                        tduration = 0
                        tnbPlayersMin = 0
                        tnbPlayersMax = 0
                        tcategory = "category unknown"
                        tnotice = "no notice"
                        tdescription = "no description"
                        tprototypeGame = false
                    }
                    if let exhibitor = game.exhibitorId{
                        tpublisher = exhibitor.name
                    } else {
                        tpublisher = "publisher unknown"
                    }
                    if let zone = game.zone{
                        tzone = zone.name
                    } else {
                        tzone = "zone unknown"
                    }
                    self.games.append(GameViewModel(Game(name: tname, ageMin: tageMin, nbPlayersMin: tnbPlayersMin, nbPlayersMax: tnbPlayersMax, duration: tduration, category: tcategory, notice: tnotice, description: tdescription, publisher: tpublisher, prototypeGame: tprototypeGame, zone: tzone)))
                }
            } catch {
                print("Error while decoding")
            }
            print("\nJeux récupérés :",self.games)
        }.resume()
    }
}
