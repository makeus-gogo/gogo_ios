//
//  SignInViewController.swift
//  GoGo
//
//  Created by Gaeng on 2021/03/03.
//

import UIKit

class SignInViewController: BaseViewController {
    
    lazy var signInButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        self.view.backgroundColor = .darkGray
        signInButton.setImage(UIImage(named: "kakao_login"), for: .normal)
        self.view.addSubview(signInButton)
    
        signInButton.snp.makeConstraints { (btn) in
            btn.width.height.equalTo(100)
            btn.center.equalTo(self.view)
        }
        
        signInButton.addTarget(self, action: #selector(onClickSignIn(_:)), for: .touchUpInside)
    }
    
    @objc func onClickSignIn(_ sender: UIButton) {
        Api.signInToKakao()
        
        let vc = BaseTabViewConrtoller()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
