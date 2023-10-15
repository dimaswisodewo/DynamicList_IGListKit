//
//  NSObject+ListDiffable.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import Foundation
import IGListDiffKit

extension NSObject: ListDiffable {
    
    public func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return isEqual(object)
    }
}
