//
//  MainViewController.swift
//  GoGo
//
//  Created by Gaeng on 2021/03/02.
//

import UIKit

class MainTabViewController: BaseViewController {
    
    lazy var topView = UIView()
    lazy var collectionView = UICollectionView()
    lazy var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = .white
        
        self.view.addSubview(topView)
        setTopView()
        
    }
    
    private func setTopView() {
        // snapkit
        topView.snp.makeConstraints {
            $0.left.right.equalTo(self.view.safeAreaLayoutGuide)
            $0.top.equalTo(self.view.snp_topMargin.)
            $0.height.equalTo(162)
        }
        
        // background color
        let topGradient = CAGradientLayer()
        topGradient.frame = topView.bounds
        
        topView.backgroundColor = .blue
        
    }
}
