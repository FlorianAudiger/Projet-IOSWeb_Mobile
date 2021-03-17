//
//  contact.swift
//  Projet IOSWeb (iOS)
//
//  Created by user190534 on 3/17/21.
//

import Foundation

class Contact {

    public var firstName: String
    public var lastName: String
    public var email: String
    public var address: String
    public var telFixe : Int
    public var telMobile : Int
    public var work : String
    public var publisherId: Int // ref exhibitor
    
    init(firstName: String, lastName: String, email: String, address: String, telFixe: Int, telMobile: Int, work: String, publisherId: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.address = address
        self.telFixe = telFixe
        self.telMobile = telMobile
        self.work = work
        self.publisherId = publisherId
    }
}
