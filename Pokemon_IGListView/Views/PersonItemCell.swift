//
//  PersonItemCell.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import UIKit

class PersonItemCell: UICollectionViewCell {
    
    static let identifier = "PersonItemCell"
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = ""
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(nameLabel)
        contentView.backgroundColor = .systemGray
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
    
    func configure(model: Person) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.paragraphSpacing = 2
        let descriptionAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12, weight: .semibold),
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]
        let subtitleAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12, weight: .semibold),
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]
        let titleAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 30, weight: .bold),
            NSAttributedString.Key.foregroundColor: UIColor.systemRed,
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]
        let attributedText = NSMutableAttributedString(string: "ID: \(model.id)\n", attributes: subtitleAttributes)
        attributedText.append(NSAttributedString(string: "\(model.name)\n", attributes: titleAttributes))
        attributedText.append(NSAttributedString(string: "Height: \(model.height)\nMass: \(model.mass)", attributes: descriptionAttributes))
        
        nameLabel.attributedText = attributedText
    }
}
