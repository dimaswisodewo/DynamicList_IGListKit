//
//  PersonSectionController.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import IGListKit

class PersonSectionController: ListSectionController {
    
    var entry: Person!
    
    override init() {
        super.init()
        inset = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
    }
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let horizontalSpace: CGFloat = 10
        let width: CGFloat = collectionContext!.containerSize.width - horizontalSpace
        return CGSize(width: width, height: 150)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(of: PersonItemCell.self, for: self, at: index)
        
        if let cell = cell as? PersonItemCell {
            cell.configure(model: entry)
        }
        return cell
    }
    
    override func didUpdate(to object: Any) {
        entry = object as? Person
    }
}
