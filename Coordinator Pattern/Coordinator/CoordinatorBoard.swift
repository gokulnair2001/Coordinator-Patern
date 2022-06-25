//
//  CoordinatorBoard.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import Foundation
import UIKit

protocol CoordinatorBoard: UIViewController {
    
    static func instanitiateFromStoryBoard() -> Self
}


extension CoordinatorBoard {
    
    static func instanitiateFromStoryBoard() -> Self {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let id = String(describing: self)
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
}
