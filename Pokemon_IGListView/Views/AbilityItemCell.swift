//
//  AbilityItemCell.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import UIKit

class AbilityItemCell: UICollectionViewCell {
    
    static let identifier = "AbilityItemCell"
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.text = ""
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(nameLabel)
        contentView.backgroundColor = .systemBlue
        contentView.layer.cornerRadius = 20
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let horizontalInset: CGFloat = 15
        nameLabel.frame = CGRect(
            x: horizontalInset,
            y: 0, width: contentView.bounds.width - (2 * horizontalInset),
            height: contentView.bounds.height
        )
    }
    
    func configure(models: [Ability]) {
        nameLabel.text = models.map({ ability in
            ability.name
        }).joined(separator: ", ")
    }
}
