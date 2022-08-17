//
//  KakaoUIViewController.swift
//  CodeUIPractice
//
//  Created by 이현호 on 2022/08/17.
//

import UIKit

import SnapKit

class KakaoUIViewController: UIViewController {
    
    //뷰디드로드보다 먼저 실행되는 구문이여서 함수 사용이 불가한데 lazy var로 지연을 해주면서 함수 사용이 가능해짐
    let backImage: UIImageView = {
        let image = UIImageView()
        image.alpha = 0.5
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var closeButton: UIButton = {
        configureTopButton(image: "xmark")
    }()
    
    lazy var settingButton: UIButton = {
        configureTopButton(image: "gearshape.circle")
    }()
    
    lazy var bankingButton: UIButton = {
        configureTopButton(image: "die.face.5")
    }()
    
    lazy var giftButton: UIButton = {
        configureTopButton(image: "gift.circle")
    }()
    
    lazy var chatButton: UIButton = {
        configureBottomButton(title: "나와의 채팅", image: "bubble.left.fill")
    }()
    
    lazy var profileEdit: UIButton = {
        configureBottomButton(title: "프로필 편집", image: "pencil")
    }()
    
    lazy var storyButton: UIButton = {
        configureBottomButton(title: "카카오스토리", image: "quote.closing")
    }()
    
    let seperatedLine: UIView = {
        let line = UIView()
        line.backgroundColor = .lightGray
        return line
    }()
    
    let profileName: UILabel = {
        let label = UILabel()
        label.text = "새싹이"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    let profile: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 50
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        //뷰에 인스턴스들 추가
        [backImage, closeButton, settingButton, bankingButton, giftButton, chatButton, profileEdit, storyButton, seperatedLine, profileName, profile].forEach {
            view.addSubview($0)
        }
        
        
        //배경 제약 조건 추가
        backImage.snp.makeConstraints { make in
            make.topMargin.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(view.safeAreaLayoutGuide)
            make.bottomMargin.equalTo(view.safeAreaLayoutGuide)
        }
        
        //닫기 버튼 제약 조건 추가
        closeButton.snp.makeConstraints { make in
            make.topMargin.equalTo(16)
            make.leadingMargin.equalTo(8)
        }
        
        //설정 버튼 제약 조건 추가
        settingButton.snp.makeConstraints { make in
            make.topMargin.equalTo(16)
            make.trailingMargin.equalTo(-8)
        }
        
        //송금 버튼 제약 조건 추가
        bankingButton.snp.makeConstraints { make in
            make.topMargin.equalTo(16)
            make.trailing.equalTo(settingButton.snp.leading)
        }
        
        //선물하기 버튼 제약 조건 추가
        giftButton.snp.makeConstraints { make in
            make.topMargin.equalTo(16)
            make.trailing.equalTo(bankingButton.snp.leading)
        }
        
        //나와의 채팅 버튼 제약 조건 추가
        chatButton.snp.makeConstraints { make in
            make.bottomMargin.equalTo(-40)
            make.trailing.equalTo(profileEdit.snp.leading).offset(-10)
        }
        
        //프로필 편집 버튼 제약 조건 추가
        profileEdit.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottomMargin.equalTo(-40)
        }
        
        //카카오스토리 버튼 제약 조건 추가
        storyButton.snp.makeConstraints { make in
            make.bottomMargin.equalTo(-40)
            make.leading.equalTo(profileEdit.snp.trailing).offset(10)
        }
        
        //구분선 제약 조건 추가
        seperatedLine.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.leadingMargin.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
            make.top.equalTo(profileEdit.snp.top).offset(-20)
        }
        
        //프로필명 제약 조건 추가
        profileName.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(seperatedLine.snp.top).offset(-60)
        }
        
        //프로필사진 제약 조건 추가
        profile.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.topMargin.equalTo(profileName.snp.top).offset(-150)
        }
        
    }
    
    //카카오톡 위쪽 버튼 속성 설정 함수
    func configureTopButton(image: String) -> UIButton {
        var config = UIButton.Configuration.plain()
        config.image = UIImage(systemName: image)
        config.buttonSize = .small
        let button = UIButton(configuration: config)
        button.tintColor = .white
        return button
    }
    
    //카카오톡 아래쪽 버튼 속성 설정 함수
    func configureBottomButton(title: String, image: String) -> UIButton {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init(title)
        titleAttr.font = .systemFont(ofSize: 15, weight: .regular)
        config.attributedTitle = titleAttr
        config.image = UIImage(systemName: image)
        config.imagePadding = 16
        config.imagePlacement = .top
        config.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        let button = UIButton(configuration: config)
        button.tintColor = .white
        return button
    }
    
    
}
