//
//  LoginViewController.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import UIKit

class LoginViewController: UIViewController, CoordinatorBoard {

    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    weak var loginChildCoordinator: LoginChildCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("deinitialized loginvc")
    }
  
    @IBAction func logInButton(_ sender: Any) {
        
        if userNameTF.text != "" {
            loginChildCoordinator?.navigateToMainVC(userName: userNameTF.text!)
        }else {
            DispatchQueue.main.async {
                self.alertView(message: "User name is empty")
            }
        }
       
    }
    
    @IBAction func signInButton(_ sender: Any) {
        loginChildCoordinator?.navigateToSignInVC()
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        loginChildCoordinator?.navigateToResetPasswordVC()
    }
    

}

extension UIViewController {
    func alertView(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true)
    }
}
