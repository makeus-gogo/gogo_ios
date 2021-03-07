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
    
        view.backgroundColor = .white
        view.addSubview(tabBarCon.view)
        
        createTabBar()
    }
    
    func createTabBar() {
        UITabBar.setTransparentTabbar()
        
        let mainVC = UINavigationController(rootViewController: MainTabViewController())
        mainVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "home"), selectedImage: UIImage(named: "home_sel"))
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        searchVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "explore"), selectedImage: UIImage(named: "explore_sel"))
        let myPageVC = UINavigationController(rootViewController: MyPageViewController())
        myPageVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "mypage"), selectedImage: UIImage(named: "mypage_sel"))
        
        tabBarCon.viewControllers = [mainVC, searchVC, myPageVC]
    }
}

