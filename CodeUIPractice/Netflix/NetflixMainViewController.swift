//
//  NetflixMainViewController.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/20.
//

import UIKit

class NetflixMainViewController: BaseViewController {
    
    var mainView = NetflixMainView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
    }
    

}
