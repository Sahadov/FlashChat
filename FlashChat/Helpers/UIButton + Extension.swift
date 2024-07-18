//
//  UIButton + Extension.swift
//  FlashChat
//
//  Created by Дмитрий Волков on 18.07.2024.
//

import UIKit

extension UIButton {
    convenience init(titleColor: UIColor?, backgroundColor: UIColor? = .clear) {
        self.init(type: .system)
        self.titleLabel?.font = .systemFont(ofSize: 30)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
