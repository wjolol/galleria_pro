//
//  ImpostazioniVC.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 21/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import Foundation
import UIKit

class ImpostazioniVC: UIViewController{
    
    //MARK: Properties
    @IBOutlet weak var switchDati: UISwitch!
    
    //MARK: Actions
    
    @IBAction func statoSwitch(_ sender: UISwitch) {
        
        let dati = UserDefaults.standard
        
        let stato = dati.bool(forKey: "statoSwitch")
        
        print("Stato Switch:" + String(stato))
        
            if switchDati.isOn{
               
                let savePref = ImpostazioniVM()
                savePref.savePreferenza()
                
                dati.set(true, forKey: "statoSwitch")
                dati.set(true, forKey: "isOn")
                switchDati.setOn(true, animated: true)
            }
            else{
                
                dati.set(false, forKey: "statoSwitch")
                dati.set(false, forKey: "isOn")
                switchDati.setOn(false, animated: true)
                print("Stato TUTTO:" + String(stato))
                
            }
       
    }
    
    
    //MARK: Functions
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let check = ImpostazioniVM()
        check.checkStatoSwitch(switchDati: switchDati)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
