//
//  SignUpViewController.swift
//  Instagram Clone
//
//  Created by user173030 on 7/16/20.
//  Copyright © 2020 Riley Griffith. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // changing color properties of username text field elements
        usernameTextField.backgroundColor = .clear
        usernameTextField.attributedPlaceholder = NSAttributedString(string: usernameTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        usernameTextField.tintColor = .white
        usernameTextField.textColor = .white
        
        // creates bottom line under username text field
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: 35, width: 364, height: 1)
        bottomLayer.backgroundColor = UIColor.init(white: 1.0, alpha: 0.6).cgColor
        usernameTextField.layer.addSublayer(bottomLayer)
        
        // changing color properties of email text field elements
        emailTextField.backgroundColor = .clear
        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        emailTextField.tintColor = .white
        emailTextField.textColor = .white
        
        // creates bottom line under email text field
        let bottomLayerE = CALayer()
        bottomLayerE.frame = CGRect(x: 0, y: 35, width: 364, height: 1)
        bottomLayerE.backgroundColor = UIColor.init(white: 1.0, alpha: 0.6).cgColor
        emailTextField.layer.addSublayer(bottomLayerE)
        
        // changing color properties of password text field elements
        passwordTextField.backgroundColor = .clear
        passwordTextField.attributedPlaceholder = NSAttributedString(string: passwordTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        passwordTextField.tintColor = .white
        passwordTextField.textColor = .white
        
        // creates bottom line under email text field
        let bottomLayerP = CALayer()
        bottomLayerP.frame = CGRect(x: 0, y: 35, width: 364, height: 1)
        bottomLayerP.backgroundColor = UIColor.init(white: 1.0, alpha: 0.6).cgColor
        passwordTextField.layer.addSublayer(bottomLayerP)
        
        // profile image animation
        profileImage.layer.cornerRadius = 50
    }
    
    @IBAction func dismissOnClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SignUpButton_TouchUpInside(_ sender: Any) {
        Auth.auth().createUser(withEmail: "email@gmail.com", password: "password") { authResult, error in
          
        }
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
