//
//  Ingredient.swift
//  Kcal4Life
//
//  Created by Samu Mukkala on 31/08/2017.
//  Copyright © 2017 Samu Mukkala. All rights reserved.
//

import Foundation
import ObjectMapper

struct Ingredient: Mappable {
    var id: String?
    var name: String?
    var kcal: Double?
    var protein: Double?
    var carbs: Double?
    var fat: Double?

    init(name: String, kcal: Double) {
        self.name = name
        self.kcal = kcal
    }
    
    init() {
        
    }

    init?(map: Map) {
        
    }

    mutating func mapping(map: Map) {
        id      <- map["id"]
        name    <- map["name"]
        kcal    <- map["kcal"]
        protein <- map["protein"]
        carbs   <- map["carbs"]
        fat     <- map["fat"]
    }

    func convertToJSON() -> [String : Any]? {
        return self.toJSON()
    }
}
