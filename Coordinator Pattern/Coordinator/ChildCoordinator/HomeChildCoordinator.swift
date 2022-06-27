//
//  HomeChildCoordinator.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import Foundation
import UIKit

class HomeChildCoordinator: ChildCoordinator {
   
    weak var parentCoordinator: ParentCoordinator?
    
    var navigationController: UINavigationController
    private var homeViewUserName: String = String()
    
    init(with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    func configureChildViewController() {
        let homeVC = MainViewController.instanitiateFromStoryBoard()
        homeVC.homeChildCoordinator = self
        homeVC.userName = homeViewUserName
        self.navigationController.pushViewController(homeVC, animated: true)
    }

    func passParameter(value: Decodable) {
        guard let parameter = value as? HomeChildParameter else {return}
        self.homeViewUserName = parameter.userName
    }
    
    func popLoginVC() {
        self.navigationController.popViewController(animated: true)
    }
}
