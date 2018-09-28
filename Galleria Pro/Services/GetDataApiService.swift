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
            //print("Request: \(String(describing: response.request))")   // original url request
            //print("Response: \(String(describing: response.response))") // http url response
            //print("Result: \(response.result)")                         // response serialization result
            
            //if let json = response.result.value {
               
                //let jsonStr = String(data: response.data!, encoding: .utf8)
                
                //print("JSON: \(jsonStr)")
            
            let resultsArray = response.result.value as! [AnyObject]
            var title: [String] = []
            for photoData in resultsArray{
            
                //let resultDic = resultsArray[0] as! [String: Any]
                
                title.append(photoData["title"] as! String)
            }
             completion(title)
            
                //let title = photoData?.title
       
            /*if let photos = jsonStr[0].array {
                for photo in photos {
                    let photoData = Mapper<Photo>().map(JSONString: photo)
                    //let title = photo["title"].string
                    print("TITOLO:" + title!)
                    completion(title!)
                }
            }*/
            
            
            
            //print("Title:" + title!)
            /*if(Int(numAlbum) == 1){
                let title = "Bagio TOTY IF"
                completion(title)
            }
            else if(Int(numAlbum) == 2){
                let title = "Bagio TOTS"
                completion(title)
            }
            else if(Int(numAlbum) == 3){
                let title = "Bagio ICON"
                completion(title)
            }*/
            
                //let sendData = HomepageVM()
                //sendData.insertData(title: title)
            
            //}
            
            }

        }
}





