//
//  ExamsViewController.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import UIKit

class ExamsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    let exams: [ExamItem] = [
        ExamItem(
            title: "Basic Algebra",
            subject: "Maths 101",
            date: "January 10, 2022",
            info: "Class 3B",
            imageName: "BA",
            bgColor: UIColor(hex: "#7382BE")
        ),
        ExamItem(
            title: "Shifts in Production Possibility Curve",
            subject: "Macroeconomics",
            date: "February 2, 2022",
            info: "Online",
            imageName: "PPC",
            bgColor: UIColor(hex: "#F7AE2B")
        )
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    

}
extension ExamsViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        exams.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath)
    -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "ExamCardCell",
            for: indexPath
        ) as! ExamCardCell

        cell.configure(with: exams[indexPath.item])
        return cell
    }
}
extension ExamsViewController: UICollectionViewDelegateFlowLayout {


    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        let inset: CGFloat = 2
        let width = collectionView.bounds.width - (inset * 2)

        return CGSize(width: width, height: 190)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

}

