//
//  UIViewController+Alert.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/28.
//

import UIKit

extension UIViewController {
    func showNetworkErrorAlert(message: String) {
        let alertController = UIAlertController(title: "通信エラーが発生しました。", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
