//
//  LogInChildCoordinator.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import Foundation
import UIKit

class LoginChildCoordinator: ChildCoordinator {
    

    weak var parentCoordinator: ParentCoordinator?
    var navigationController: UINavigationController
    
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    init(with _navigationController: UINavigationController){
        self.navigationController = _navigationController
    }
    
    func configureChildViewController() {
        let loginVC = LoginViewController.instanitiateFromStoryBoard()
        loginVC.loginChildCoordinator = self
        self.navigationController.pushViewController(loginVC, animated: true)
    }
    
    func navigateToMainVC(userName: String) {
      
        let homeChildCoordinator = ChildCoordinatorFactory.create(with: parentCoordinator!.navigationController, type: .main)
        homeChildCoordinator.passParameter(value: HomeChildParameter(userName: userName))
        print("⚠️\(homeChildCoordinator)")
        parentCoordinator?.childCoordinator.append(homeChildCoordinator)
        print("⚠️⚠️\(homeChildCoordinator)")
        parentCoordinator?.removeChildCoordinator(child: self)
        homeChildCoordinator.configureChildViewController()
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
