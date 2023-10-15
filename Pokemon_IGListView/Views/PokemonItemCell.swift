//
//  PokemonItemCell.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import UIKit

class PokemonItemCell: UICollectionViewCell {
    
    static let identifier = "PokemonItemCell"
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = ""
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(nameLabel)
        contentView.backgroundColor = .black
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
    
    func configure(model: Pokemon) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.paragraphSpacing = 2
        let subtitleAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12, weight: .semibold),
            NSAttributedString.Key.foregroundColor: UIColor.systemGreen,
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]
        let titleAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 30, weight: .bold),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        let attributedText = NSMutableAttributedString(string: "ID: \(model.id)\n", attributes: subtitleAttributes)
        attributedText.append(NSAttributedString(string: model.name, attributes: titleAttributes))
        
        nameLabel.attributedText = attributedText
    }
}
