//
//  BaseTabBarController.swift
//  CustomTabbar
//
//  Created by Rajesh Kumar on 24/09/2022.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    
    private let buttonSize = 80.0

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    @objc func centerButtonClicked(){
        self.selectedIndex = 2
    }
}

//MARK: Setup View
private extension BaseTabBarController{
    func setView(){
        setMiddleButton()
        setTabbarAppearance()
        setTabBarShadow()
    }
    
    func setTabbarAppearance(){
        UITabBar.appearance().barTintColor = .clear
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = .secondaryColor
    }
    
    func setTabBarShadow(){
        
        tabBar.layer.shadowColor = UIColor.lightGray.cgColor
        tabBar.layer.shadowOpacity = 0.5
        tabBar.layer.shadowOffset = CGSize.zero
        tabBar.layer.shadowRadius = 5
        tabBar.layer.borderColor = UIColor.clear.cgColor
        tabBar.layer.borderWidth = 0
        tabBar.clipsToBounds = false
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
    }
    
    
    func setMiddleButton(){
        let centerButton = UIButton(type: .system)
        centerButton.configuration = getButtonConfiguration()
        centerButton.frame.size = CGSize(width: buttonSize, height: buttonSize)
        centerButton.backgroundColor = .primaryColor
        centerButton.layer.cornerRadius = buttonSize / 2
        centerButton.titleLabel?.font = .systemFont(ofSize: 12)
        centerButton.layer.masksToBounds = true
        centerButton.center = CGPoint(x: tabBar.frame.width / 2, y: 10)
        centerButton.addTarget(self, action: #selector(centerButtonClicked), for: .touchUpInside)
        centerButton.tintColor = .white
        self.tabBar.addSubview(centerButton)
    }
    
    func getButtonConfiguration() -> UIButton.Configuration{
        let image = UIImage(named: "AddReceipt")
        var configuration = UIButton.Configuration.plain()
        configuration.imagePlacement = .top
        configuration.titleAlignment = .center
        configuration.image = image
        configuration.subtitle = "New Order"
        configuration.buttonSize = .mini
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                              leading: 0,
                                                              bottom: 4,
                                                              trailing: 0)
        configuration.titlePadding = 4
        return configuration
    }
}
