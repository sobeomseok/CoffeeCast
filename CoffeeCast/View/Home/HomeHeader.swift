//
//  HomeHeader.swift
//  CoffeeCast
//
//  Created by 소범석 on 2022/07/25.
//

import UIKit

protocol HomeHeaderDelegate: class {
//    func didTapImage()
    
}

class HomeHeader: UIView {
    // MARK: - Properties
    
    weak var delegate: HomeHeaderDelegate?
    
    let CCImageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "CCLogo"))
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleCCImageTapped))
        return iv
    }()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(CCImageView)
//        CCImageView.center(inView: self)
//        CCImageView.setDimensions(width: 300, height: 300)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Selectors
    
    @objc func handleCCImageTapped() {
        
    }
    
//    @objc func didTapImage() {
//        delegate?.didTapImage()
//    }
    
    // MARK: - API
    
    // MARK: - Helpers
}
