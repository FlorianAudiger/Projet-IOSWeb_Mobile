//
//  exhibitor.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/17/21.
//

import Foundation

class Exhibitor {

    public var name : String
    public var contacts : [Contact]
    public var mainContact : Contact
    //public var booking :
    public var publisherOnly : Bool
    public var gameList : Game
    public var gameBookedList : [Game]
    
    init(name: String, contacts: [Contact], mainContact: Contact, publisherOnly: Bool, gameList: Game, gameBookedList: [Game]) {
        self.name = name
        self.contacts = contacts
        self.mainContact = mainContact
        self.publisherOnly = publisherOnly
        self.gameList = gameList
        self.gameBookedList = gameBookedList
    }}
