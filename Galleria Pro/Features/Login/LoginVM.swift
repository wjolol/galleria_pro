//
//  LoginVM.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 21/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import UIKit

class LoginVM {
    
    func checkLogin(vc: UIViewController, codUtente: String, password: String){
        
        if(codUtente == "giorgio" && password == "password"){
            
            openHomePage(vc: vc);
        
        }
        
        else{
            
            showAlertUsername(vc: vc)
            
        }
    
    }
    
    func openHomePage(vc: UIViewController){
        
        var mainView: UIStoryboard!
        mainView = UIStoryboard(name: "Homepage", bundle: nil)
        let viewcontroller : UIViewController = mainView.instantiateViewController(withIdentifier: "HomepageVC") as UIViewController
        vc.present(viewcontroller, animated: true, completion:nil)
        
    }
    
    func showAlertUsername(vc: UIViewController) {
        
        let alert = UIAlertController(title: "Errore", message: "Devi inserire un codice utente esistente prima di proseguire", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        vc.present(alert, animated: true)
       
    }
    
}
