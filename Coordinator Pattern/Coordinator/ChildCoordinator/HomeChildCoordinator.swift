//
//  HomeChildCoordinator.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import Foundation
import UIKit

class HomeChildCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    private var homeViewUserName: String
    
    init(with _navigationController: UINavigationController, userName: String){
        self.navigationController = _navigationController
        self.homeViewUserName = userName
    }
    
    func configureRootViewController() {
        let homeVC = MainViewController.instanitiateFromStoryBoard()
        homeVC.homeChildCoordinator = self
        homeVC.userName = homeViewUserName
        self.navigationController.pushViewController(homeVC, animated: true)
    }
    
}
