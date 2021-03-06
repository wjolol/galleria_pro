//
//  HomepageVM.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 21/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//
import Foundation
import UIKit

class HomepageVM {
    
    let photoObj = Photo()
    
    //MARK: Functions
    func openImpostazioni(vc: UIViewController){
        
        var mainView: UIStoryboard!
        mainView = UIStoryboard(name: "Impostazioni", bundle: nil)
        let viewcontroller : UIViewController = mainView.instantiateViewController(withIdentifier: "ImpostazioniVC") as UIViewController
        vc.present(viewcontroller, animated: true, completion:nil)
    }
    
    func insertData(title: String){
        
        photoObj.setTitle(title: title)

    }
    
    func getLabelTitle() -> String{
        
        return photoObj.getTitle()
        
    }
}
