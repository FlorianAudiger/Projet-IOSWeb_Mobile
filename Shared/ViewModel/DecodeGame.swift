//
//  DecodeGame.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/22/21.
//

struct CurrentFestivalData: Codable {
    var gameBookedList : [GameBookedData]
}

struct GameBookedData: Codable {
    var exhibitorId: ExhibitorData?
    var gameId: GameData?
    var zone: ZoneData?
}

struct ZoneData: Codable {
    var name: String
}

struct ExhibitorData: Codable {
    var name: String
}

struct GameData: Codable {
    var name: String
    var ageMin: Int?
    var duration: Int?
    var nbPlayerMin: Int?
    var nbPlayerMax: Int?
    var category: String?
    var notice: String?
    var description: String?
    var prototypeGame: Bool?
}


import Foundation
import SwiftUI

public class DecodeGame: ObservableObject {

    @Published var games = [GameViewModel]()
    
    
    
}
