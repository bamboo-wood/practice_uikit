//
//  MainView.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/27.
//

import UIKit

class MainView: UIView {
    let label: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap me", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubview(label)
        self.addSubview(button)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
        ])
    }
}


