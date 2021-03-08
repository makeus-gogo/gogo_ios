//
//  MyPageViewController.swift
//  GoGo
//
//  Created by Gaeng on 2021/03/03.
//

import UIKit

class MyPageViewController: UIViewController {
    
    lazy var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = .white
    }
}
