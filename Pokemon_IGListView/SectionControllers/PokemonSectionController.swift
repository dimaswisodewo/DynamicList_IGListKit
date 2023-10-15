//
//  PokemonSectionController.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import IGListKit

class PokemonSectionController: ListSectionController {
    
    var entry: Pokemon!
    var isCollapsed: Bool = true
    
    override init() {
        super.init()
        inset = UIEdgeInsets(top: 0, left: 0, bottom: 18, right: 0)
    }
    
    override func numberOfItems() -> Int {
        return isCollapsed ? 1 : 2
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let horizontalSpace: CGFloat = 10
        let width: CGFloat = collectionContext!.containerSize.width - horizontalSpace
        let height: CGFloat = index == 0 ? 100 : 60
        return CGSize(width: width, height: height)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cellClass: AnyClass = index == 0 ? PokemonItemCell.self : AbilityItemCell.self
        let cell = collectionContext!.dequeueReusableCell(of: cellClass, for: self, at: index)
        
        if let cell = cell as? PokemonItemCell {
            cell.configure(model: entry)
        } else if let cell = cell as? AbilityItemCell {
            cell.configure(models: entry.abilities)
        }
        return cell
    }
    
    override func didUpdate(to object: Any) {
        entry = object as? Pokemon
    }
    
    override func didSelectItem(at index: Int) {
        collectionContext?.performBatch(animated: true, updates: { [weak self] (batchContext) in
            guard let self = self else { return }
            self.isCollapsed.toggle()
            batchContext.reload(self)
        })
    }
}
