//
//  BaeminViewController.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/17.
//

import UIKit

import SnapKit

class BaeminViewController: UIViewController {
    
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        view.layer.masksToBounds = true
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        view.layer.cornerRadius = 30
        return view
    }()
    
    lazy var gridButton: UIButton = {
        configureTopButton(image: "square.grid.2x2")
    }()
    
    lazy var myInfoButton: UIButton = {
        configureTopButton(image: "face.smiling")
    }()
    
    lazy var alarmButton: UIButton = {
        configureTopButton(image: "bell")
    }()
    
    let addressButton: UIButton = {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init("회사")
        titleAttr.font = .systemFont(ofSize: 17, weight: .bold)
        config.attributedTitle = titleAttr
        config.image = UIImage(systemName: "chevron.down")
        config.imagePlacement = .trailing
        config.imagePadding = 4
        let button = UIButton(configuration: config)
        button.tintColor = .white
        return button
    }()
    
    let searchBar: UISearchBar = {
        let bar = UISearchBar()
        bar.placeholder = "포케? 돈까스? 커리?"
        bar.searchTextField.font = .systemFont(ofSize: 14)
        bar.backgroundColor = .white
        bar.searchTextField.backgroundColor = .white
        bar.searchTextField.leftView?.tintColor = .systemMint
        bar.layer.masksToBounds = false
        bar.layer.shadowOpacity = 0.5
        bar.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        bar.layer.shadowRadius = 1
        return bar
    }()
    
    lazy var collView1: UIImageView = {
        configureCollView(image: "delivery")
    }()
    
    lazy var collView2: UIImageView = {
        configureCollView(image: "baemin1")
    }()
    
    lazy var collView3: UIImageView = {
        configureCollView(image: "takeout")
    }()
    
    lazy var collView4: UIImageView = {
        configureCollView(image: "bmart")
    }()
    
    lazy var collView5: UIImageView = {
        configureCollView(image: "shoppinglive")
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [topView, gridButton, myInfoButton, alarmButton, addressButton, searchBar, collView1, collView2, collView3, collView4, collView5].forEach {
            view.addSubview($0)
        }
        
        topView.snp.makeConstraints { make in
            make.topMargin.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(view).multipliedBy(0.19)
        }
        
        gridButton.snp.makeConstraints { make in
            make.topMargin.equalTo(16)
            make.leadingMargin.equalTo(8)
        }
        
        myInfoButton.snp.makeConstraints { make in
            make.topMargin.equalTo(16)
            make.trailingMargin.equalTo(-8)
        }
        
        alarmButton.snp.makeConstraints { make in
            make.topMargin.equalTo(16)
            make.trailing.equalTo(myInfoButton.snp.leading)
        }
        
        addressButton.snp.makeConstraints { make in
            make.topMargin.equalTo(16)
            make.centerX.equalTo(view)
        }
        
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(addressButton.snp.bottom).offset(8)
            make.leadingMargin.equalTo(8)
            make.trailingMargin.equalTo(-8)
            make.bottom.equalTo(topView.snp.bottom).offset(-16)
        }
        
        collView1.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(15)
        }
        
        collView2.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(20)
            make.leading.equalTo(collView1.snp.trailing).offset(15)
            make.trailingMargin.equalTo(-15)
        }
        
        collView3.snp.makeConstraints { make in
            make.top.equalTo(collView2.snp.bottom).offset(20)
            make.centerX.equalTo(view)
            make.leadingMargin.equalTo(15)
            make.trailingMargin.equalTo(-15)
        }
        
        collView4.snp.makeConstraints { make in
            make.top.equalTo(collView3.snp.bottom).offset(20)
            make.leadingMargin.equalTo(15)
        }
        
        collView5.snp.makeConstraints { make in
            make.top.equalTo(collView3.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-15)
            make.leading.equalTo(collView4.snp.trailing).offset(15)
            
            
        }
        
    }
    
    func configureTopButton(image: String) -> UIButton {
        var config = UIButton.Configuration.plain()
        config.image = UIImage(systemName: image)
        config.buttonSize = .small
        let button = UIButton(configuration: config)
        button.tintColor = .white
        return button
    }
    
    func configureCollView(image: String) -> UIImageView {
        let view = UIImageView()
        view.layer.cornerRadius = 10
        view.image = UIImage(named: image)
        view.contentMode = .scaleAspectFit
        return view
    }
    
}
