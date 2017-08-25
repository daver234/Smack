//
//  LoginVC.swift
//  Smack
//
//  Created by David Rothschild on 8/24/17.
//  Copyright © 2017 Dave Rothschild. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "toCreateAccount", sender: nil)
    }
    @IBAction func closeTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
