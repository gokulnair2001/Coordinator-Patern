//
//  Coordinator.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var childCoordinator: [Coordinator] { get set }
    
    func configureRootViewController()
}
 
