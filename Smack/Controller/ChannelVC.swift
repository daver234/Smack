//
//  ChannelVC.swift
//  Smack
//
//  Created by David Rothschild on 8/23/17.
//  Copyright © 2017 Dave Rothschild. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    // Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
}
