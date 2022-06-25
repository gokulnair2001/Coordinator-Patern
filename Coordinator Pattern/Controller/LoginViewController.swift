//
//  LoginViewController.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import UIKit

class LoginViewController: UIViewController, CoordinatorBoard {

    
    var mainCoordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    @IBAction func logInButton(_ sender: Any) {
        mainCoordinator?.navigateToMainVC()
    }
    
    @IBAction func signInButton(_ sender: Any) {
        mainCoordinator?.navigateToSignInVC()
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        mainCoordinator?.navigateToResetPasswordVC()
    }
    

}
