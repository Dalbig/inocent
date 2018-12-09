//
//  WelcomeVC.swift
//  inocent
//
//  Created by User on 2018. 12. 8..
//  Copyright © 2018년 yulmong. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    override func viewDidLoad() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime(uptimeNanoseconds: 1000000)) {
            self.performSegue(withIdentifier: "WelcomeToNavSegue", sender: nil)
        }
    }
}
