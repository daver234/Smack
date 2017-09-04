//
//  CreateAccountVC.swift
//  Smack
//
//  Created by David Rothschild on 8/24/17.
//  Copyright © 2017 Dave Rothschild. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    
    // Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_AVATAR_PICKER, sender: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let username = usernameText.text, usernameText.text != "" else {
            return
        }
        guard let email = emailText.text, emailText.text != "" else {
            return
        }
        
        guard let pass = passwordText.text, passwordText.text != "" else {
            return
        }
        
        AuthoService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                AuthoService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        AuthoService.instance.createUser(name: username, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print(UserDataService.instance.name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                            
                        })
                    }
                })
            }
        }
    }
    
    @IBAction func pickBGcolorPressed(_ sender: Any) {
    }
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
}
