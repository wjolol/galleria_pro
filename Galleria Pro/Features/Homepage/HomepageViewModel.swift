//
//  HomepageViewModel.swift
//  Galleria Pro
//  
//  Created by Giorgio Sertori on 02/10/2018.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import Foundation


class HomepageViewModel {
    
    var titles: [String] = []
    let labelText: Dynamic<String>
    var isScaricato: Bool
    
    init(numAlbum: String, indexPath: IndexPath) {
        self.labelText = Dynamic("")
        isScaricato = false
        saveData(numAlbum: numAlbum, index: indexPath)
    }

    
    func saveData(numAlbum: String, index: IndexPath){
        
        let download = GetDataApiService()
        download.downloadData(numAlbum: numAlbum) { (result) -> () in
            for i in result{
                self.titles.append( i )
                //print("DOWNLOAD:" + String(self.titles.count) + " -- TITOLO:" + i)
                    
            }
            self.getTitles(indexPath: index)
        }
    }
    
    func getTitles(indexPath: IndexPath) {
        //print("BIG: " + titles[indexPath.item])
        
        labelText.value = titles[indexPath.item]
        
    }
    
}
