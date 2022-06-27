//
//  MainCoordinator.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import Foundation
import UIKit

class MainCoordinator: ParentCoordinator {
    
    var navigationController: UINavigationController
    var childCoordinator: [ChildCoordinator] = [ChildCoordinator]()
    
    init(with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    func configureRootViewController() {
        
        let loginChildCoordinator = ChildCoordinatorFactory.create(with: self.navigationController, type: .login)
        childCoordinator.append(loginChildCoordinator)
        loginChildCoordinator.parentCoordinator = self
        loginChildCoordinator.configureChildViewController()
    }
    
    func removeChildCoordinator(child: ChildCoordinator) {
        for (index, coordinator) in childCoordinator.enumerated() {
            if(coordinator === child) {
                childCoordinator.remove(at: index)
                break
            }
        }
    }
}
