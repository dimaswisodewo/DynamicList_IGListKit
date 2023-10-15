//
//  ViewController.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import IGListKit

class ViewController: UIViewController {
    
    let pokemonLoader = PokemonLoader()
    let personLoader = PersonLoader()
    let counterLoader = CounterLoader()
    
    let collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        cv.backgroundColor = .white
        return cv
    }()
    
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonLoader.loadData()
        personLoader.loadData()
        counterLoader.loadData()
        
        adapter.collectionView = collectionView
        adapter.dataSource = self
        
        view.addSubview(collectionView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        collectionView.frame = view.bounds
    }
}

// MARK: - ListAdapter Data Source

extension ViewController: ListAdapterDataSource {
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        var entries: [ListDiffable] = pokemonLoader.entries as [ListDiffable]
        entries += personLoader.entries as [ListDiffable]
        entries += counterLoader.entries as [ListDiffable]
        return entries
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is Pokemon {
            return PokemonSectionController()
        } else if object is Person {
            return PersonSectionController()
        } else if object is Counter {
            let counterSectionController = CounterSectionController()
            counterSectionController.delegate = self
            return counterSectionController
        } else {
            return ListSectionController()
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}

// MARK: - CounterSectionController Delegate

extension ViewController: CounterSectionControllerDelegate {

    func didSelectItem(entry: Counter) {
        for index in 0..<counterLoader.entries.count {
            if counterLoader.entries[index].isEqual(toDiffableObject: entry) {
                let newItem = Counter(number: entry.number)
                counterLoader.entries.insert(newItem, at: index)
                break
            }
        }
        adapter.performUpdates(animated: true)
    }
}
