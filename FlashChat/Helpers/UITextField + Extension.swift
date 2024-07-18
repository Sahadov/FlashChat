//
//  UITextField + Extension.swift
//  FlashChat
//
//  Created by Дмитрий Волков on 18.07.2024.
//

import UIKit

extension UITextField {
    convenience init(placeholder: String, color: UIColor?) {
        self.init()
        self.placeholder = placeholder
        self.textAlignment = .center
        self.backgroundColor = .white
        self.layer.cornerRadius = 30
        self.font = .systemFont(ofSize: 25)
        self.textColor = color
        self.tintColor = color
    }
}
