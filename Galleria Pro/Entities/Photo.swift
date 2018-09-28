//
//  photo.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 23/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import Foundation
import ObjectMapper

/*
struct PhotoStruct: Mappable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}
*/

class Photo: Mappable{
    
    var albumId: Int?
    var photoId: Int?
    var title: String?
    var url: String?
    var thumbnailUrl: String?
    
    //MARK: Inits
    
    init(){
        self.albumId = 0
        self.photoId = 0
        self.title = ""
        self.url = ""
        self.thumbnailUrl = ""
    }
    
    init (albumId: Int, photoId: Int, title: String, url: String, thumbnailUrl: String){
        
        self.albumId = albumId
        self.photoId = photoId
        self.title = title
        self.url = url
        self.thumbnailUrl = thumbnailUrl
        
    }
    
    required init?(map: Map){
        self.mapping(map: map)
    }

    
    //MARK: Functions
    func mapping(map: Map) {
    
        albumId         <- map["albumId"]
        title           <- map["title"]
        photoId         <- map["photoId"]
        url             <- map["url"]
        thumbnailUrl    <- map["tumbnaailUrl"]
    }
    
    //MARK: Setters, Getters
    
    func setAlbumId (albumId: Int){
        
        self.albumId = albumId
        
    }
    
    func setPhotoId (photoId: Int){
        
        self.photoId = photoId
        
    }
    
    func setTitle (title: String){
        
        self.title = title
        
    }
    
    func setUrl (url: String){
        
        self.url = url
        
    }
    
    func setThumbNailUrl (thumbnailUrl: String){
        
        self.thumbnailUrl = thumbnailUrl
        
    }
    
    func getAlbumId() -> Int{
        
        return albumId!
        
    }
    
    func  getPhotoId() -> Int{
        
        return photoId!
        
    }
    
    func getTitle() -> String{
        
        return title!
        
    }
    
    func getUrl() -> String{
        
        return url!
        
    }
    
    func getThumbnailUrl() -> String{
        
        return thumbnailUrl!
        
    }
}

