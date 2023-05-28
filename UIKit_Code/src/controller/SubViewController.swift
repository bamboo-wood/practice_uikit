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
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = SubView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            do {
                let item = try await viewModel.fetchItem(id: "your_item_id_here")
                print("Name: \(item.name), Price: \(item.price), Type: \(item.type)")
            } catch {
                print("Error: \(error)")
            }
        }
    }
}

