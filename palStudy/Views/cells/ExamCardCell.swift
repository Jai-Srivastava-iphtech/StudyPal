//
//  ExamCardCell.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import UIKit

class ExamCardCell: UICollectionViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var examImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.cornerRadius = 24
        signUpButton.layer.cornerRadius = 21
    }

    func configure(with item: ExamItem) {
        titleLabel.text = item.title
        subjectLabel.text = item.subject
        dateLabel.text = item.date
        infoLabel.text = item.info
        examImageView.image = UIImage(named: item.imageName)
        cardView.backgroundColor = item.bgColor
    }
}
