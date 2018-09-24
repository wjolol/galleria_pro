//
//  ImpostazioniVM.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 21/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import Foundation
import UIKit

class ImpostazioniVM {
    
    
    func savePreferenza(){
        
        let dati = UserDefaults.standard
        
        dati.set(true, forKey: "isOn")
        dati.set(true, forKey: "statoSwitch")
        
    }
    
    func checkStatoSwitch( switchDati: UISwitch ){
        
        let dati = UserDefaults.standard
        
        let stato = dati.bool(forKey: "statoSwitch")
        
        if(stato){
            
            switchDati.setOn(true, animated: true)
            
        }
        
    }
    
    
    
}
