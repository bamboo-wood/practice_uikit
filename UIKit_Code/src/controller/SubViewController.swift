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
    }
}

