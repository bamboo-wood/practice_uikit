//
//  MainViewController.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/27.
//

import UIKit

class MainViewController: UIViewController {
    
    private let coordinator: AppCoordinator
    
    private var mainView: MainView {
        return view as! MainView
    }
    
    init(coordinator: AppCoordinator) {
        self.coordinator = coordinator
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainView.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        presentAlert()
    }
    
    private func presentAlert() {
        
        let alertController = UIAlertController(title: "Alert", message: "Button Tapped!!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.coordinator.presentSubViewController()
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}

