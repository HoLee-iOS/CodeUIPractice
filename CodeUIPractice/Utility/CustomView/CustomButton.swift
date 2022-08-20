//
//  CustomButton.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/20.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpUI() {
        backgroundColor = .clear
        tintColor = .white
        titleLabel?.font = .systemFont(ofSize: 12, weight: .semibold)
    }
}
