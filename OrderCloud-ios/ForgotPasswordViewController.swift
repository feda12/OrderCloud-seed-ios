//
//  ForgotPasswordViewController.swift
//  OrderCloud-ios
//
//  Created by Ben Le Cam on 1/6/16.
//  Copyright © 2016 Ben Le Cam. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupDesign()
    }
    
    func setupDesign() {
        submitBtn.layer.borderWidth = 1
        submitBtn.layer.borderColor = UIColor.whiteColor().CGColor
        
        cancelBtn.layer.borderWidth = 1
        cancelBtn.layer.borderColor = Four51.Colors.orange.CGColor
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func cancel(sender: AnyObject) {

    }
}

