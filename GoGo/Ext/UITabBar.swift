//
//  UITabBar.swift
//  GoGo
//
//  Created by Gaeng on 2021/03/07.
//

import UIKit

extension UITabBar {
    
    static func setTransparentTabbar() {
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().clipsToBounds = true
    }
}
