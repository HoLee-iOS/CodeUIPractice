//
//  BaseViewController.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/20.
//

import UIKit
import Toast

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() { }
    
    func showToastMessage(message: String) {
        self.view.makeToast(message, position: .center)
    }
    
}
