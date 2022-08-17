//
//  ViewController.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let vc = KakaoUIViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }


}

