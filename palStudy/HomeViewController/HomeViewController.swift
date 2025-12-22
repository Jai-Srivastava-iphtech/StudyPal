//
//  HomeViewController.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var scheduleCollectionView: UICollectionView!
    @IBOutlet weak var scheduleCollectionViewHeight: NSLayoutConstraint!
    @IBOutlet weak var scrollView: UIScrollView!

    // MARK: - Data
    let scheduleItems: [ScheduleItem] = [
        ScheduleItem(
            type: "Tutorials",
            title: "Maths 101",
            subtitle: "classes",
            isOnline: false,
            isMuted: false
        ),
        ScheduleItem(
            type: "Practical",
            title: "Vocabulary",
            subtitle: "classes",
            isOnline: true,
            isMuted: true
        )
    ]

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        scheduleCollectionView.delegate = self
        scheduleCollectionView.dataSource = self
        scheduleCollectionView.isScrollEnabled = false

        scrollView.delaysContentTouches = false
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateCollectionHeight()
    }

    // MARK: - Height Handling
    private func updateCollectionHeight() {
        scheduleCollectionView.layoutIfNeeded()

        let height = scheduleCollectionView
            .collectionViewLayout
            .collectionViewContentSize.height

        scheduleCollectionViewHeight.constant = height

        // Forces ScrollView to recalc content size
        view.layoutIfNeeded()
    }
}
extension HomeViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return scheduleItems.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath)
    -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "ScheduleCardCell",
            for: indexPath
        ) as! ScheduleCardCell

        cell.configure(with: scheduleItems[indexPath.item])
        return cell
    }
}
extension HomeViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {

        let item = scheduleItems[indexPath.item]

        // Only allow navigation for Maths 101
        if item.title == "Maths 101" {
            performSegue(withIdentifier: "goToClassDetails", sender: self)
        }
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        let spacing: CGFloat = 16
        let availableWidth = collectionView.bounds.width
        let columns: CGFloat = availableWidth > 500 ? 2 : 1
        let totalSpacing = spacing * (columns - 1)
        let width = (availableWidth - totalSpacing) / columns

        return CGSize(width: width, height: 180)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
}


    


