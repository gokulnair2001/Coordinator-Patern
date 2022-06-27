//
//  MainViewController.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import UIKit

class MainViewController: UIViewController, CoordinatorBoard {

    @IBOutlet weak var nameLabel: UILabel!
    
    weak var homeChildCoordinator: HomeChildCoordinator?
    
    var userName: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        
        nameLabel.text = userName
    }
    @IBAction func logoutButton(_ sender: Any) {
        homeChildCoordinator?.popLoginVC()
    }
    
}
