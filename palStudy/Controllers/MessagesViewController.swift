//
//  MessagesViewController.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import UIKit

class MessagesViewController: UIViewController {
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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
