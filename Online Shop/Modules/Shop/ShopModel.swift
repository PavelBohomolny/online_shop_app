//
//  ShopModel.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import Foundation

enum Brands: String {
    case brand1 = "Brand1"
    case brand2 = "Brand2"
    case brand3 = "Brand3"
    case brand4 = "Brand4"
    case brand5 = "Brand5"
}

struct ProductModel: Identifiable {
    let id: String
    let article: String
    let brand: Brands
    let name: String
    let description: String
    let cost: Double
    let image: String
    
    init(id: String, article: String, brand: Brands, name: String, description: String, cost: Double, image: String) {
        self.id = id
        self.article = article
        self.brand = brand
        self.name = name
        self.description = description
        self.cost = cost
        self.image = image
    }
    
    var data: [String:Any] {
        var data: [String:Any] = [:]
        data["id"] = id
        data["article"] = article
        data["brand"] = brand
        data["name"] = name
        data["description"] = description
        data["cot"] = cost
        data["image"] = image
        return data
    }
}
