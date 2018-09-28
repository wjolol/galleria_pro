//
//  LoginVC.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 21/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var textFieldCodUtente: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var buttonLogin: UIButton!
    
    @IBOutlet weak var buttonLoginTouchId: UIButton!
    
    //MARK: Actions
    
    @IBAction func doLogin(_ sender: UIButton) {
        
        let textCodUtente = String(textFieldCodUtente.text!)
        let textPassword = String(textFieldPassword.text!)
        
        let check = LoginVM()
        check.checkLogin(vc: self, codUtente: textCodUtente, password: textPassword )
    
    }
    
    
    @IBAction func doLoginTouchId(_ sender: UIButton) {
        
        
        let textCodUtente = String(textFieldCodUtente.text!)
        
        let fingerCheck = TouchIdHelper()
        fingerCheck.checkFingerprint(vc: self, codUtente: textCodUtente)
        
    }
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let check = LoginVM()
        check.checkPreferenze(textField: textFieldCodUtente)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

