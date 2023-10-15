//
//  CounterItemCell.swift
//  Pokemon_IGListView
//
//  Created by Dimas Wisodewo on 14/10/23.
//

import UIKit

class CounterItemCell: UICollectionViewCell {
    
    static let identifier = "CounterItemCell"
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.text = ""
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(numberLabel)
        contentView.backgroundColor = .systemTeal
        contentView.layer.cornerRadius = 20
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let horizontalInset: CGFloat = 15
        numberLabel.frame = CGRect(
            x: horizontalInset,
            y: 0, width: contentView.bounds.width - (2 * horizontalInset),
            height: contentView.bounds.height
        )
    }
    
    func configure(model: Counter) {
        numberLabel.text = String(model.number)
    }
}
