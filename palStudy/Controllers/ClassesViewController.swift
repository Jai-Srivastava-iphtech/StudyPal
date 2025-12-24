//
//  ClassesViewController.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import UIKit

class ClassesViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    let classes: [ClassItem] = [

        ClassItem(
            title: "Maths 101",
            category: "Tutorials",
            time: "9:30 - 11:30",
            days: "Every Monday & Wednesday",
            extra: "Class 12",
            bgColor: UIColor(hex: "#7382BE"),   // maths
            imageName: "math_icon"
        ),

        ClassItem(
            title: "Vocabulary",
            category: "Workshop",
            time: "13:00 - 15:30",
            days: "Every Monday",
            extra: "Online class",
            bgColor: UIColor(hex: "#59E1E1"),   // vocab
            imageName: "vocab_icon"
        ),

        ClassItem(
            title: "Macroeconomics",
            category: "Tutorials",
            time: "11:00 - 12:30",
            days: "Everyday",
            extra: "Class 10",
            bgColor: UIColor(hex: "#F7AE2B"),   // eco
            imageName: "eco_icon"
        ),

        ClassItem(
            title: "Communication",
            category: "Workshop",
            time: "14:30 - 17:00",
            days: "Every Friday",
            extra: "Class A9",
            bgColor: UIColor(hex: "#51C3FE"),   // comm
            imageName: "comm_icon"
        )
    ]
    
}
extension ClassesViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        classes.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath)
    -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "ClassCardCell",
            for: indexPath
        ) as! ClassCardCell

        cell.configure(with: classes[indexPath.item])
        return cell
    }
}
extension ClassesViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width = collectionView.bounds.width
        let height: CGFloat = 145

        return CGSize(width: width, height: height)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        16
    }
}

