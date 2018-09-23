//
//  photo.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 23/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import Foundation

class Photo{
    
    var albumId: Int
    var photoId: Int
    var title: String
    var url: String
    var thumbnailUrl: String
    
    init (albumId: Int, photoId: Int, title: String, url: String, thumbnailUrl: String){
        
        self.albumId = albumId
        self.photoId = photoId
        self.title = title
        self.url = url
        self.thumbnailUrl = thumbnailUrl
        
    }
    
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
        
        return albumId
        
    }
    
    func  getPhotoId() -> Int{
        
        return photoId
        
    }
    
    func getTitle() -> String{
        
        return title
        
    }
    
    func getUrl() -> String{
        
        return url
        
    }
    
    func getThumbnailUrl() -> String{
        
        return thumbnailUrl
        
    }
}

