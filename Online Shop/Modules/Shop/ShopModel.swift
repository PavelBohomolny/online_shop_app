//
//  ShopModel.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import Foundation

enum Brands: String {
    case brand1 = "Brend1"
    case brand2 = "Brend2"
    case brand3 = "Brend3"
    case brand4 = "Brend4"
    case brand5 = "Brend5"
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
}
