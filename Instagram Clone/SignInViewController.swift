//
//  SignInViewController.swift
//  Instagram Clone
//
//  Created by user173030 on 7/15/20.
//  Copyright © 2020 Riley Griffith. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.backgroundColor = UIColor.clear
        
    }
}
