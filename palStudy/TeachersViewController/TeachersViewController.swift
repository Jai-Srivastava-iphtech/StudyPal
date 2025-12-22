//
//  TeachersViewController.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import UIKit

class TeachersViewController: UIViewController {
    @IBOutlet var cardViews: [UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        cardViews.forEach { view in
            view.layer.cornerRadius = 15
            view.layer.borderWidth = 1
            view.layer.borderColor = UIColor.systemIndigo.cgColor
            view.layer.masksToBounds = true

        // Do any additional setup after loading the view.
    }
    }


}
