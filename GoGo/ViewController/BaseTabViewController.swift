//
//  ViewController.swift
//  GoGo
//
//  Created by Gaeng on 2021/02/23.
//

import UIKit

class BaseTabViewConrtoller: BaseViewController {

    lazy var tabBarCon = UITabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        view.backgroundColor = .green
        view.addSubview(tabBarCon.view)
        
        createTabBar()
    }
    
    func createTabBar() {
        tabBarCon.tabBar.tintColor = .red
        
        let mainVC = UINavigationController(rootViewController: MainViewController())
        mainVC.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 0)
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        let myPageVC = UINavigationController(rootViewController: MyPageViewController())
        myPageVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 2)
        
        tabBarCon.viewControllers = [mainVC, searchVC, myPageVC]
    }
}

