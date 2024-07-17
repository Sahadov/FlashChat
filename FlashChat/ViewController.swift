//
//  ViewController.swift
//  FlashChat
//
//  Created by Дмитрий Волков on 16.07.2024.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
// MARK: - UI
    
    private lazy var titleLable: UILabel = {
        var element = UILabel()
        element.textColor = UIColor(named: K.BrandColors.blue)
        element.font = .systemFont(ofSize: 50, weight: .black)
        return element
    }()
    
    let registerButton = UIButton(
        titleColor: UIColor(named: K.BrandColors.blue),
        backgroundColor: UIColor(named: K.BrandColors.lighBlue)
    )
    
    let loginButton = UIButton(
        titleColor: .white,
        backgroundColor: .systemTeal
    )

    
    
// MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setupConstraints()
    }

    
// MARK: - Set views
    private func setViews(){
        view.backgroundColor = .white
        view.addSubview(titleLable)
        view.addSubview(registerButton)
        view.addSubview(loginButton)
        
        titleLable.text = K.appName
        registerButton.setTitle(K.registerName, for: .normal)
        loginButton.setTitle(K.logInName, for: .normal)
    }
}



// MARK: - Setup Constraints
extension ViewController {
    private func setupConstraints(){
        titleLable.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        loginButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(K.Size.buttonSize)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
        registerButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(K.Size.buttonSize)
            make.bottom.equalTo(loginButton.snp.top).offset(-K.Size.buttonOffset)
        }
    }
}

extension UIButton {
    convenience init(titleColor: UIColor?, backgroundColor: UIColor? = .clear) {
        self.init(type: .system)
        self.titleLabel?.font = .systemFont(ofSize: 30)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
    }
}
