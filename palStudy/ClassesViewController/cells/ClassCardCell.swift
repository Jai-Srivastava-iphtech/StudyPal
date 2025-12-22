//
//  ClassCardCell.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import UIKit

class ClassCardCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var extraLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 16
    }
    func configure(with item: ClassItem) {

        titleLabel.text = item.title
        categoryLabel.text = item.category
        timeLabel.text = item.time
        daysLabel.text = item.days
        extraLabel.text = item.extra

        // background color
        containerView.backgroundColor = item.bgColor

        // image
        iconImageView.image = UIImage(named: item.imageName)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
    }
}
