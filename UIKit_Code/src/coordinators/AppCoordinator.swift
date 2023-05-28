//
//  AppCoordinator.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/28.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainVC = MainViewController(coordinator: self)
        navigationController.pushViewController(mainVC, animated: true)
    }
    
    func presentSubViewController() {
        let viewModel = ItemViewModel(repository: ItemRepository())
        let subVC = SubViewController(viewModel: viewModel)
        navigationController.pushViewController(subVC, animated: true)
    }
}

