//
//  Game.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/16/21.
//

import Foundation


/// Data model of a game
///
/// has a name ...
class Game{

    
    /// observer of properties changes
    //public var observer : CourseObserver?
    
    /// name of the course
    ///
    /// if there is an observer, it is warn of a change
    public var name : String
    public var ageMin : Int
    public var nbPlayersMin : Int
    public var nbPlayersMax : Int
    public var duration : Int
    public var category : String
    public var notice : String
    public var description : String
    public var exhibitorId : Int
    public var prototypeGame : Bool
    
    /// duration of the course
    ///
    /// if there is an observer, it is warn of a change
    //public var duration : Int{
    //    didSet { self.observer?.durationChanged(to: self.duration) }
    //}
    
    /// initialization of a new Course
    /// - Parameters:
    ///   - name: name of the course
    ///   - duration: duration of the course
    
    internal init(name: String, ageMin: Int, nbPlayersMin: Int, nbPlayersMax: Int, duration: Int, category: String, notice: String, description: String, exhibitorId: Int, prototypeGame: Bool) {
        self.name = name
        self.ageMin = ageMin
        self.nbPlayersMin = nbPlayersMin
        self.nbPlayersMax = nbPlayersMax
        self.duration = duration
        self.category = category
        self.notice = notice
        self.description = description
        self.exhibitorId = exhibitorId
        self.prototypeGame = prototypeGame
    }}
