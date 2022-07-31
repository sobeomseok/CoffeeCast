//
//  HomeController.swift
//  CoffeeCast
//
//  Created by 소범석 on 2022/07/20.
//

import UIKit

class HomeController: UIViewController {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Selectors
    
    // MARK: - API
    
    // MARK: - Helpers
    
    func configureUI() {
        let imageView = UIImageView(image: UIImage(named: "CCLogo"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
//        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
    }
}
