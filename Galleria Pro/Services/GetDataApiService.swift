//
//  getDataApiService.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 25/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//
import Alamofire
import Foundation
import ObjectMapper
import SwiftyJSON

class GetDataApiService {
    
    func downloadData(numAlbum: String, completion: @escaping (_ result: [String])->()){
        
        let url = "https://jsonplaceholder.typicode.com/albums/"+numAlbum+"/photos"
        
        Alamofire.request(url).responseJSON { response in
            
            let resultsArray = response.result.value as! [AnyObject]
            var title: [String] = []
            for photoData in resultsArray{
            
                title.append(photoData["title"] as! String)
            }
             completion(title)
            
            }

        }
}





