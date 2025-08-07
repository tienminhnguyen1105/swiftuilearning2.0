//
//  Bird.swift
//  Birdsong_SwiftUI
//
//  Created by Nguyễn Tiến Minh on 15/08/2024.
//

import Foundation

import Foundation
import ObjectMapper
import SwiftyJSON

public class Bird: NSObject, Mappable {
    var uid: String = UUID().uuidString
    var createAt: Date = Date()

    var name: String = ""
    var scientific_name : String = ""
    var confidence: Double = 0
    var score: Double = 0
    var wiki_link: String = ""
    var images: [String] = []
    var full_description: String = ""
    var full_desc: String = ""
    var image:  String = ""
    var sound: String = ""
    var listSound : [String] = []
    var date = Date()
    
    var isFromVoice : Bool = false
    var isLiked : Bool = false
    
    // new form step id
    var country_codes : String = ""
    var activity : String = ""
    var size : String = ""
    
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        full_desc <- map["full_desc"]
        confidence <- map["confidence"]
        wiki_link <- map["wiki_link"]
        images <- map["images"]
        full_description <- map["full_description"]
        full_desc <- map["full_desc"]
        score <- map["score"]
        sound <- map["sound"]
        scientific_name <- map["scientific_name"]
        listSound <- map["listSound"]
        // new form step id
        country_codes <- map["country_codes"]
        activity <- map["activity"]
        size <- map["size"]

    }
    
  
    
    func getDesc() -> String {
        if full_desc.count != 0 {
            return full_desc
        } else if full_description.count != 0 {
            return full_description
        } else {
            return ""
        }
    }
    
    func getScientific_name() -> String {
        if scientific_name.count != 0 {
            return scientific_name
        }else{
            return getDesc()
        }
    }
    
    func getImageBanner() -> String {
        if image.count != 0 {
            return image
        }else if images.first!.count != 0 {
            return images.first!
        }else{
            return ""
        }
    }
    
    func getName() -> String {
        return name
    }
    
  
    
//    func convertRecent() -> BirdRecent {
//        let bird = BirdRecent()
//        
//        bird.uid = self.uid
//        bird.createAt = self.createAt
//        bird.name = self.name
//        bird.confidence = self.confidence
//        bird.score = self.score
//        bird.wiki_link = self.wiki_link
//        bird.images = self.images
//        bird.full_description = self.full_description
//        bird.full_desc = self.full_desc
//        bird.images = self.images
//        bird.image = self.image
//        bird.full_desc = self.full_desc
//        bird.date = self.date
//        bird.isFromVoice = self.isFromVoice
//        bird.isLiked = self.isLiked
//        bird.sound = self.sound
//        bird.listSound = self.listSound
//        return bird
//    }
//    
//    func converBirdFolder() -> BirdFolder {
//        let bird = BirdFolder()
//        bird.uid = self.uid
//        bird.createAt = self.createAt
//        bird.name = self.name
//        bird.confidence = self.confidence
//        bird.score = self.score
//        bird.wiki_link = self.wiki_link
//        bird.images = self.images
//        bird.full_description = self.full_description
//        bird.full_desc = self.full_desc
//        bird.images = self.images
//        bird.image = self.image
//        bird.full_desc = self.full_desc
//        bird.date = self.date
//        bird.isFromVoice = self.isFromVoice
//        bird.isLiked = self.isLiked
//        bird.sound = self.sound
//        return bird
//    }
}
