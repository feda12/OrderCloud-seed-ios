//
//  LoginViewController.swift
//  OrderCloud-ios
//
//  Created by Ben Le Cam on 1/6/16.
//  Copyright © 2016 Ben Le Cam. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the delegate of your textField to this class
        usernameInput.delegate = self
        passwordInput.delegate = self

        setupDesign()
        
        if usernameInput.text!.isEmpty || passwordInput.text!.isEmpty {
            loginBtn.userInteractionEnabled = false
        }
    }
    
    func setupDesign()
    {
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.whiteColor().CGColor
                
        usernameInput.layer.cornerRadius = 0;
        passwordInput.layer.cornerRadius = 0;
    }
    
    // This method is available, because this class is now the delegate
    func textFieldDidBeginEditing(textField: UITextField) {
        if !usernameInput.text!.isEmpty || !passwordInput.text!.isEmpty {
            loginBtn.userInteractionEnabled = true
        } else {
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func login(sender: AnyObject) {
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            let controllerId = "Home"
            
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let initViewController: UIViewController = storyboard.instantiateViewControllerWithIdentifier(controllerId) as UIViewController
            self.presentViewController(initViewController, animated: true, completion: nil)
        })
    }
}