//
//  ScheduleCardCell.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import UIKit

class ScheduleCardCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bellImageView: UIImageView!
    @IBOutlet weak var onlineButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        containerView.layer.cornerRadius = 24
        containerView.clipsToBounds = true

        onlineButton.layer.cornerRadius = 12
        onlineButton.clipsToBounds = true

        contentView.isUserInteractionEnabled = true

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        onlineButton.alpha = 0.7
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        onlineButton.alpha = 1.0
    }


    func configure(with item: ScheduleItem) {
        typeLabel.text = item.type
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle

        bellImageView.image = UIImage(
            systemName: item.isMuted ? "bell.slash" : "bell"
        )

        onlineButton.isHidden = !item.isOnline
    }
}

