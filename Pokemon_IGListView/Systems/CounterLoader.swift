//
//  NumberLoader.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import Foundation

class CounterLoader {
    
    var entries: [Counter] = []
    
    func loadData() {
        entries = [
            Counter(number: 1),
            Counter(number: 2),
            Counter(number: 3)
        ]
    }
}
