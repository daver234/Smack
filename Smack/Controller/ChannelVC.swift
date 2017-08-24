//
//  ChannelVC.swift
//  Smack
//
//  Created by David Rothschild on 8/23/17.
//  Copyright © 2017 Dave Rothschild. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
}
