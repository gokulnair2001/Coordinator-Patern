//
//  ChildCoordinatorFactory.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 27/06/22.
//

import Foundation
import UIKit

enum childCoordinatorType {
    case login
    case main
}

class ChildCoordinatorFactory {
    static func create(with _navigationController: UINavigationController, type: childCoordinatorType) -> ChildCoordinator{
        
        switch type {
        case .login:
            return LoginChildCoordinator(with: _navigationController)
        case .main:
            return HomeChildCoordinator(with: _navigationController)
        }
    }
}
