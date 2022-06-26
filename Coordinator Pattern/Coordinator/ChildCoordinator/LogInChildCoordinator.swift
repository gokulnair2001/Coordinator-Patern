//
//  LogInChildCoordinator.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import Foundation
import UIKit

class LoginChildCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    weak var mainCoordinator: MainCoordinator?
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    init(with _navigationController: UINavigationController){
        self.navigationController = _navigationController
    }
    
    func configureRootViewController() {
        let loginVC = LoginViewController.instanitiateFromStoryBoard()
        loginVC.loginChildCoordinator = self
        self.navigationController.pushViewController(loginVC, animated: true)
    }
    
    func navigateToMainVC(userName: String) {
        
        let homeChildCoordinator = HomeChildCoordinator(with: self.navigationController, userName: userName)
        mainCoordinator?.childCoordinator.append(homeChildCoordinator)
        mainCoordinator?.removeFromChildCoordinator(child: self)
        homeChildCoordinator.configureRootViewController()
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
