//
//  MainCoordinator.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    func configureRootViewController() {
        
        let loginVC = LoginViewController.instanitiateFromStoryBoard()
        loginVC.mainCoordinator = self
        self.navigationController.pushViewController(loginVC, animated: true)
    }
    
    func navigateToMainVC() {
        
        let mainVC = MainViewController.instanitiateFromStoryBoard()
        self.navigationController.pushViewController(mainVC, animated: true)
    }
    
    func navigateToResetPasswordVC() {
        
        let resetPasswordVC = ResetViewController.instanitiateFromStoryBoard()
        self.navigationController.pushViewController(resetPasswordVC, animated: true)
    }
    
    func navigateToSignInVC() {
        
        let forgotPasswordVC = SignInViewController.instanitiateFromStoryBoard()
        self.navigationController.pushViewController(forgotPasswordVC, animated: true)
    }
    
}
