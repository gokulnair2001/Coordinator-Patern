//
//  MainViewController.swift
//  Coordinator Pattern
//
//  Created by Gokul Nair on 25/06/22.
//

import UIKit

class MainViewController: UIViewController, CoordinatorBoard {

    @IBOutlet weak var nameLabel: UILabel!
    
    var userName: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        nameLabel.text = userName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
