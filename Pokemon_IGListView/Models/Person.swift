//
//  Person.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import Foundation

class Person: NSObject {
    let id: Int
    let name: String
    let height: Int
    let mass: Int
    
    init(id: Int, name: String, height: Int, mass: Int) {
        self.id = id
        self.name = name
        self.height = height
        self.mass = mass
    }
}
