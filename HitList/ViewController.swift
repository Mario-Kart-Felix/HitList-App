//
//  ViewController.swift
//  HitList
//

//  Created by Kim Nguyen on 2016-09-09.
//  Copyright © 2016 Kim Nguyen. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var textviewField: UITextView!
    
    var FirstString = String()
    
    override func viewDidLoad() {
        
        textviewField.text = FirstString
        
    }
}
