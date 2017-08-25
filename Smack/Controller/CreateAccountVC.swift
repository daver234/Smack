//
//  CreateAccountVC.swift
//  Smack
//
//  Created by David Rothschild on 8/24/17.
//  Copyright © 2017 Dave Rothschild. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
}
