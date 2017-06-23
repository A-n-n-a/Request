//
//  RequestResult.swift
//  Request
//
//  Created by Anna on 23.06.17.
//  Copyright © 2017 Anna. All rights reserved.
//

import Foundation
import UIKit

struct RequestResult{
    
    var albumID: Int
    var id: Int
    var titleText: String
    var url: String
    var thumbnail: String
    
    init(dictionary: [String:AnyObject]) {
        

        
        let albumID = dictionary[albumIdString] as! Int
        let id = dictionary[idString] as! Int
        let titleText = dictionary[titleString] as! String
        
        let urlAsString = dictionary[urlString] as! String
        let privateUrl = URL(string: urlAsString)
        
        //var thumbnail = UIImage()
        //var imageUrl: URL
        let imageString = dictionary[thumbnailString] as! String
        
//        let imageUrl = URL(string: imageString)!
//        let data = NSData(contentsOf: imageUrl)
//        let thumbnail = UIImage(data:data! as Data)!
        

        self.albumID = albumID
        self.id = id
        self.titleText = titleText
        self.url = urlAsString
        self.thumbnail = imageString

    }

    
}
