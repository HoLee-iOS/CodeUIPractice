//
//  NetflixMainView.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/20.
//

import UIKit

class NetflixMainView: BaseView {
    
    //요소 만들기
    let mainBackground: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "어벤져스엔드게임")
        return image
    }()
    
    let mainBackShadow: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background")
        return image
    }()
    
    let topLeftButton: UIButton = {
        let button = UIButton()
        button.setTitle("N", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 50, weight: .heavy)
        button.tintColor = .white
        return button
    }()
    
    let topStackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let topButton1: CustomButton = {
        let button = CustomButton()
        button.setTitle("TV프로그램", for: .normal)
        return button
    }()
    
    let topButton2: CustomButton = {
        let button = CustomButton()
        button.setTitle("영화", for: .normal)
        return button
    }()
    
    let topButton3: CustomButton = {
        let button = CustomButton()
        button.setTitle("내가 찜한 콘텐츠", for: .normal)
        return button
    }()
    
    let middleStackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contentButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.image = UIImage(named: "check")
        config.imagePlacement = .top
        config.imagePadding = 12
        config.attributedTitle = .init("내가 찜한 컨텐츠")
        config.attributedTitle?.font = .systemFont(ofSize: 14, weight: .regular)
        let button = UIButton(configuration: config)
        button.tintColor = .white
        return button
    }()
    
    let playButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.image = UIImage(named: "play_normal")
        let button = UIButton(configuration: config)
        return button
    }()
    
    let infoButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.image = UIImage(named: "info")
        config.imagePlacement = .top
        config.imagePadding = 12
        config.attributedTitle = .init("정보")
        config.attributedTitle?.font = .systemFont(ofSize: 14, weight: .regular)
        let button = UIButton(configuration: config)
        button.tintColor = .white
        return button
    }()
    
//    let bottomStackView: UIStackView = {
//        let view = UIStackView()
//        view.distribution = .fillEqually
//        view.spacing = 8
//        return view
//    }()
    
    let bottomImage1: CustomImageView = {
        let image = CustomImageView(image: UIImage(named: "겨울왕국2"))
        return image
    }()
    
    let bottomImage2: CustomImageView = {
        let image = CustomImageView(image: UIImage(named: "신과함께인과연"))
        return image
    }()
    
    let bottomImage3: CustomImageView = {
        let image = CustomImageView(image: UIImage(named: "아바타"))
        return image
    }()
    
    let preViewLabel: UILabel = {
        let label = UILabel()
        label.text = "미리보기"
        label.textColor = .white
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        
        //스택뷰로 추가하기
        [topButton1, topButton2, topButton3].forEach {
            topStackView.addArrangedSubview($0)
        }
        
//        [bottomImage1, , bottomImage3].forEach {
//            bottomStackView.addArrangedSubview($0)
//        }
        
        [contentButton, playButton, infoButton].forEach {
            middleStackView.addArrangedSubview($0)
        }
        
        [mainBackground, mainBackShadow, topLeftButton, topStackView, bottomImage2, bottomImage1, bottomImage3, preViewLabel, middleStackView].forEach {
            self.addSubview($0)
        }
        
    }
    
    override func setConstraints() {
        
        //메인배경사진 제약조건 설정
        mainBackground.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.leading.equalTo(self)
            make.trailing.equalTo(self)
            make.height.equalTo(self).multipliedBy(0.7)
        }
        mainBackShadow.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.leading.equalTo(self)
            make.trailing.equalTo(self)
            make.bottom.equalTo(self)
        }
        
        topLeftButton.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.leading.equalTo(16)
        }
        
        topStackView.snp.makeConstraints { make in
            make.top.equalTo(60)
            make.leading.equalTo(topLeftButton.snp.trailing).offset(20)
            make.trailing.equalTo(-16)
        }
        
//        bottomStackView.snp.makeConstraints { make in
//            make.bottom.equalTo(self.safeAreaLayoutGuide)
//            make.leading.equalTo(16)
//            make.trailing.equalTo(-16)
//            make.width.height.equalTo(50)
//        }
        
        bottomImage2.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.width.height.equalTo(130)
        }
        
        bottomImage1.snp.makeConstraints { make in
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.trailing.equalTo(bottomImage2.snp.leading).offset(-8)
            make.width.height.equalTo(130)
        }
        
        bottomImage3.snp.makeConstraints { make in
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.leading.equalTo(bottomImage2.snp.trailing).offset(8)
            make.width.height.equalTo(130)
        }
        
        preViewLabel.snp.makeConstraints { make in
            make.bottom.equalTo(bottomImage2.snp.top).offset(-16)
            make.leading.equalTo(self.safeAreaLayoutGuide).offset(8)
        }
        
        middleStackView.snp.makeConstraints { make in
            make.leading.equalTo(10)
            make.trailing.equalTo(-10)
            make.bottom.equalTo(preViewLabel.snp.top).offset(-20)
        }
        
    }
    
    
}
