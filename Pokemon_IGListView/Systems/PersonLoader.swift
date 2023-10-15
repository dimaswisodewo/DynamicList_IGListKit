//
//  PersonLoader.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import Foundation

class PersonLoader {
    
    var entries: [Person] = []
    
    func loadData() {
        let entries: [Person] = [
            Person(
                id: 1,
                name: "Luke Skywalker",
                height: 172,
                mass: 77
            ),
            Person(
                id: 4,
                name: "Darth Vader",
                height: 202,
                mass: 136
            )
        ]
        self.entries = entries
    }
}
