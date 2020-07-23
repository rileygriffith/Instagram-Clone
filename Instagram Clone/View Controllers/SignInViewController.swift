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
        
        // changing color properties of email text field elements
        emailTextField.backgroundColor = .clear
        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        emailTextField.tintColor = .white
        emailTextField.textColor = .white
        
        // creates bottom line under email text field
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: 35, width: 364, height: 1)
        bottomLayer.backgroundColor = UIColor.init(white: 1.0, alpha: 0.6).cgColor
        emailTextField.layer.addSublayer(bottomLayer)
        
        // changing color properties of password text field elements
        passwordTextField.backgroundColor = .clear
        passwordTextField.attributedPlaceholder = NSAttributedString(string: passwordTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        passwordTextField.tintColor = .white
        passwordTextField.textColor = .white
        
        // creates bottom line under password text field
        let bottomLayerP = CALayer()
        bottomLayerP.frame = CGRect(x: 0, y: 35, width: 364, height: 1)
        bottomLayerP.backgroundColor = UIColor.init(white: 1.0, alpha: 0.6).cgColor
        passwordTextField.layer.addSublayer(bottomLayerP)
    }
}
