//
//  ViewController.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/27.
//

import UIKit

class MainViewController: UIViewController {
    
    private var mainView: MainView {
        return view as! MainView
    }
    
    override func loadView() {
        view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        mainView.label.text = "Button Tapped!!"
        presentAlert()
    }
    
    private func presentAlert() {
        let alertController = UIAlertController(title: "Alert", message: "Button Tapped!!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            let nextViewController = MainViewController()
            self?.navigationController?.pushViewController(nextViewController, animated: true)
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}

