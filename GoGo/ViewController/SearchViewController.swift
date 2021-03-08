//
//  SearchViewController.swift
//  GoGo
//
//  Created by Gaeng on 2021/03/03.
//

import UIKit

class SearchViewController: UIViewController {
    
    lazy var searchTextField = UITextField()
    lazy var saerchButton = UIButton()
    lazy var collectionView = UICollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = .white
    }
}
