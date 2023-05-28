//
//  ViewController.swift
//  UIKit_Code
//
//  Created by 佐々木一樹 on 2023/05/27.
//

import UIKit

class SubViewController: UIViewController {
    
    private var subView: SubView {
        return view as! SubView
    }
    
    private let viewModel: ItemViewModel
    
    init(viewModel: ItemViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = SubView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subView.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        Task {
            do {
                try await viewModel.fetchItem(id: "your_item_id_here")
                subView.update(withItem: viewModel.item)
            } catch {
                print("Error: \(error)")
            }
        }
    }
}

