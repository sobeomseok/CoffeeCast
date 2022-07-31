//
//  MainTabController.swift
//  CoffeeCast
//
//  Created by 소범석 on 2022/07/20.
//

import UIKit

class MainTabController: UITabBarController {

    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
        
    }
    
    // MARK: - Selectors
    
    // MARK: - API
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        let home = HomeController()
        let nav1 = templateNavigationController(image: UIImage(systemName: "house"), rootViewController: home)
        
        let order = OrderController()
        let nav2 = templateNavigationController(image: UIImage(systemName: "cup.and.saucer"), rootViewController: order)
        
        let user = UserController()
        let nav3 = templateNavigationController(image: UIImage(systemName: "person"), rootViewController: user)
        
        viewControllers = [nav1, nav2, nav3]
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    
}
