//
//  SignInControllerViewController.swift
//  carousel
//
//  Created by Jeff Smith on 9/21/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class SignInControllerViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func onSignInButton(sender: UIButton) {
        
        let signInAlertView = UIAlertView(title: "Signing In...", message: nil, delegate: nil, cancelButtonTitle: nil)
        
        let invalidCredentialsAlertView = UIAlertView(title: "Sign In Failed", message: "Incorrect Email or Password", delegate: nil, cancelButtonTitle: "OK")

        if (self.emailTextField.text == "") || (self.passwordTextField.text == "") {
            invalidCredentialsAlertView.show()
        } else  {
            signInAlertView.show()
            delay(2) {
                signInAlertView.dismissWithClickedButtonIndex(0, animated: true)
                if (self.emailTextField.text == "me@example.com") && (self.passwordTextField.text == "123456") {
                    self.performSegueWithIdentifier("loginSegue", sender: self)
                } else {
                    invalidCredentialsAlertView.show()
                }

            }
        }

    }

    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func onBackButtonPress(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
}
