//
//  GameViewModel.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 17/03/2021.
//

import Foundation

class GameViewModel: Identifiable {
    
    //Nedded to be identifiable
    let id = UUID()
    
    private(set) var model: Game
    
    var name: String{
        get{
            return self.model.name
        }
        set{
            self.model.name = newValue
        }
    }
    var publisher: String{
        get{
            return self.model.publisher
        }
        set{
            self.model.publisher = newValue
        }
    }
    var duration: Int{
        get{
            return self.model.duration
        }
        set{
            self.model.duration = newValue
        }
    }
    var nbPlayersMin : Int{
        get{
            return self.model.nbPlayersMin
        }
        set{
            self.model.nbPlayersMin = newValue
        }
    }
    var nbPlayersMax : Int{
        get{
            return self.model.nbPlayersMax
        }
        set{
            self.model.nbPlayersMax = newValue
        }
    }
    var ageMin : Int{
        get{
            return self.model.ageMin
        }
        set{
            self.model.ageMin = newValue
        }
    }
    var category : String{
        get{
            return self.model.category
        }
        set{
            self.model.category = newValue
        }
    }
    var notice : String{
        get{
            return self.model.notice
        }
        set{
            self.model.notice = newValue
        }
    }
    var description : String{
        get{
            return self.model.description
        }
        set{
            self.model.description = newValue
        }
    }
    var prototypeGame : Bool{
        get{
            return self.model.prototypeGame
        }
        set{
            self.model.prototypeGame = newValue
        }
    }
    var zone : String{
        get{
            return self.model.zone
        }
        set{
            self.model.zone = newValue
        }
    }
    
    
    init(_ game: Game) {
        self.model = game
    }
}
