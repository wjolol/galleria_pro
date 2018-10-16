//
//  LoginViewModel.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 01/10/2018.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import Foundation
import SimpleTwoWayBinding

struct  LoginViewModel {
    let codUtente: Observable<String> = Observable()
    let password: Observable<String> = Observable()

    func getCodUtenteString() -> String {
        if let codUtente = codUtente.value {
            return codUtente
        }
        return "--"
    }

    func getPasswordString() -> String {
        if let password = password.value {
            return password
        }
        return "--"
    }
}
