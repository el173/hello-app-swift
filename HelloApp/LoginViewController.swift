//
//  LoginViewController.swift
//  HelloApp
//
//  Created by MacBookSH on 1/12/20.
//  Copyright © 2020 EL173. All rights reserved.
//

import UIKit;

class LoginViewController: UIViewController {
    
    @IBOutlet weak private var txtUsername: UITextField!
    @IBOutlet weak private var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnLogginPressed(_ sender: UIButton) {
        let alert: UIAlertController;
        let title: String;
        let message: String;
        let userName = txtUsername.text;
        let password = txtPassword.text;
        
        if(userName == "admin" && password == "admin") {
            let appDelegate = UIApplication.shared.delegate! as! AppDelegate
            
            let initialViewController = self.storyboard!.instantiateViewController(withIdentifier: "TabViewController")
            appDelegate.window?.rootViewController = initialViewController
            appDelegate.window?.makeKeyAndVisible()
        } else {
            title = "Login failed !!";
            message = "Error username or password";
            alert = UIAlertController(title: title, message: message, preferredStyle: .alert);
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil));
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil));
            self.present(alert, animated: true);
        }

    }
}
