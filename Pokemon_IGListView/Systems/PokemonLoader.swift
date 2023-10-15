//
//  PokemonLoader.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import Foundation

class PokemonLoader {
    
    var entries: [Pokemon] = []
    
    func loadData() {
        let entries: [Pokemon] = [
            Pokemon(
                id: 1,
                name: "Bulbasaur",
                abilities: [
                    Ability(name: "Overgrow"),
                    Ability(name: "Chlorophyll")
                ]
            ),
            Pokemon(
                id: 4,
                name: "Charmander",
                abilities: [
                    Ability(name: "Blaze"),
                    Ability(name: "Solar-Power")
                ]
            ),
            Pokemon(
                id: 7,
                name: "Squirtle",
                abilities: [
                    Ability(name: "Torrent"),
                    Ability(name: "Rain-Dish")
                ]
            )
        ]
        self.entries = entries
    }
}
