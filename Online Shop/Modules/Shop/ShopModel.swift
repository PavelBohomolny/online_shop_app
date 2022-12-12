//
//  ShopModel.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import Foundation

struct ProductModel: Identifiable {
    let id: String
    let image: String
    
    init(id: String = UUID().uuidString, image: String) {
        self.id = id
        self.image = image
    }
}
