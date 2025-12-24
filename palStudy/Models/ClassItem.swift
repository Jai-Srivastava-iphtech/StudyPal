//
//  ClassItem.swift
//  palStudy
//
//  Created by iPHTech4 on 12/19/25.
//

import Foundation
import UIKit
struct ClassItem {
    let title: String
    let category: String
    let time: String
    let days: String
    let extra: String
    let bgColor: UIColor
    let imageName: String 
}
extension UIColor {
    convenience init(hex: String) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexString = hexString.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb)

        let r = CGFloat((rgb & 0xFF0000) >> 16) / 255
        let g = CGFloat((rgb & 0x00FF00) >> 8) / 255
        let b = CGFloat(rgb & 0x0000FF) / 255

        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
}
