//
//  MainViewController.swift
//  GoGo
//
//  Created by Gaeng on 2021/03/02.
//

import UIKit

class MainTabViewController: BaseViewController {
    
    lazy var topView = UIView()
    lazy var textViewContainer = UIView()
    lazy var inputBubble = UIImageView()
    lazy var inputTextView = UITextView()
    lazy var buttonImage = UIImageView()
    lazy var goButton = UIButton()
    lazy var collectionView = UICollectionView()
    lazy var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = .white
        
        self.view.addSubview(topView)
        setTopView()
        
//        self.view.addSubview(collectionView)
        
//        self.view.addSubview(tableView)
        
        self.view.addSubview(textViewContainer)
        setTextViewContainer()
        
        textViewContainer.addSubview(inputBubble)
        setInputBubble()
        textViewContainer.addSubview(inputTextView)
        inputTextView.delegate = self
        setInputTextView()
        
        self.view.addSubview(buttonImage)
        setButtonImage()
        
        self.view.addSubview(goButton)
        setGoButton()
    }
    
    private func setTopView() {
        // snapkit
        topView.snp.makeConstraints {
            $0.left.right.equalTo(self.view)
            $0.top.equalTo(self.view)
            $0.height.equalTo(162)
        }
        
        // background color
        let topGradient = CAGradientLayer()
        topGradient.frame = topView.bounds
        
        topView.backgroundColor = .blue
        
    }
    
    private func setCollectionView() {
        
    }
    
    private func setTextViewContainer() {
        textViewContainer.snp.makeConstraints {
            $0.left.equalTo(self.view.safeAreaLayoutGuide).offset(25)
            $0.right.equalTo(self.view.safeAreaLayoutGuide).offset(-75)
            $0.top.equalTo(self.view).offset(62)
            $0.height.equalTo(120)
        }
        textViewContainer.backgroundColor = .clear
    }
    
    private func setInputBubble() {
        inputBubble.snp.makeConstraints {
            $0.top.bottom.left.right.equalToSuperview()
        }
        
        inputBubble.image = UIImage(named: "input_bubble")
    }
    
    func placeholderSetting() {
        inputTextView.text = "오늘은 무슨 고민이 있으신가요?"
        inputTextView.textColor = UIColor.lightGray
            
    }
    
    private func setInputTextView() {
        // snapkit
        inputTextView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.left.equalToSuperview().offset(20)
            $0.bottom.right.equalToSuperview()
        }
        
        inputTextView.backgroundColor = .clear
        inputTextView.font = UIFont.systemFont(ofSize: 15)
        self.placeholderSetting()
    }
    
    private func setButtonImage() {
        buttonImage.snp.makeConstraints {
            // 사이즈 수정
            $0.left.equalTo(textViewContainer.snp.right).offset(10)
            $0.right.equalTo(self.view).offset(-10)
            $0.bottom.equalTo(textViewContainer.snp.bottom)
        }
        buttonImage.image = UIImage(named: "main_button")
    }
    
    private func setGoButton() {
        goButton.snp.makeConstraints {
            $0.top.left.right.bottom.equalTo(buttonImage)
        }
    }
    
    @objc func onClickWrite(_ sender: UIButton) {
        let vc = UploadMainViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension MainTabViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == .lightGray {
            textView.text = nil
            textView.textColor = .black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            self.placeholderSetting()
        }
    }
}
