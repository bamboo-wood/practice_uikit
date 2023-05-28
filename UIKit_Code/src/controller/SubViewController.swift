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
    
    override func loadView() {
        view = SubView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            do {
                let request = GetItemRequest(itemId: "your_item_id_here")
                let item = try await APIManager.shared.perform(request)
                print("Name: \(item.name), Price: \(item.price), Type: \(item.type)")
            } catch {
                print("Error: \(error)")
            }
        }
    }
}

