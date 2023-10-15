//
//  Pokemon.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import Foundation

class Pokemon: NSObject {
    let id: Int
    let name: String
    let abilities: [Ability]
    
    init(id: Int, name: String, abilities: [Ability]) {
        self.id = id
        self.name = name
        self.abilities = abilities
    }
}

class Ability: NSObject {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}
