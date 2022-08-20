//
//  CustomImageView.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/20.
//

import UIKit

class CustomImageView: UIImageView {
    
    override init(image: UIImage?) {
        super.init(image: image)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI() {
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 3
        layer.cornerRadius = 65
        layer.masksToBounds = true
        clipsToBounds = true
        contentMode = .scaleAspectFill
    }
}
