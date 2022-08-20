//
//  BaseView.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/20.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }    
    
    func configureUI() { }
    
    func setConstraints() { }
    
}
