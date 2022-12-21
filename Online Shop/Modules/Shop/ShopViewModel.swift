//
//  ShopViewModel.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import Foundation

class ShopViewModel: ObservableObject {
    
    private let dataService = ProductDataService.shared
    @Published var products: [ProductModel] = []
    
    init() {
        getProducts()
    }
    
    // upload product data
    func uploadProductData(product: ProductModel) {
        dataService.uploadProductData(product: product) { result in
            switch result {
            case .success(let product):
                print("Successfully uploaded product data: \(product.id)")
            case .failure(let error):
                print("Error uploading product data: \(product.id) : \(error.localizedDescription)")
            }
        }
    }
    
    // template for canvas
    static let sampleProduct = ProductModel(id: "Id1", article: "000001", brand: .brand1, name: "Product 1", description: "description", cost: 5432.12, image: "1")
    
    private func getProducts() {
        let product1 = ProductModel(id: "Id1", article: "000001", brand: .brand1, name: "Product 1", description: "description", cost: 5432.12, image: "1")
        let product2 = ProductModel(id: "Id2", article: "000002", brand: .brand2, name: "Product 2", description: "description", cost: 5432.12, image: "2")
        let product3 = ProductModel(id: "Id3", article: "000003", brand: .brand3, name: "Product 3", description: "description", cost: 5432.12, image: "3")
        let product4 = ProductModel(id: "Id4", article: "000004", brand: .brand4, name: "Product 4", description: "description", cost: 5432.12, image: "4")
        let product5 = ProductModel(id: "Id5", article: "000005", brand: .brand5, name: "Product 5", description: "description", cost: 5432.12, image: "5")
        let product6 = ProductModel(id: "Id6", article: "000006", brand: .brand1, name: "Product 6", description: "description", cost: 5432.12, image: "6")
        let product7 = ProductModel(id: "Id7", article: "000007", brand: .brand2, name: "Product 7", description: "description", cost: 5432.12, image: "7")
        let product8 = ProductModel(id: "Id8", article: "000008", brand: .brand3, name: "Product 8", description: "description", cost: 5432.12, image: "8")
        let product9 = ProductModel(id: "Id9", article: "000009", brand: .brand4, name: "Product 9", description: "description", cost: 5432.12, image: "9")
        let product10 = ProductModel(id: "Id10", article: "0000010", brand: .brand5, name: "Product 10", description: "description", cost: 5432.12, image: "10")
        
        
        products.append(contentsOf: [
            product1,
            product2,
            product3,
            product4,
            product5,
            product6,
            product7,
            product8,
            product9,
            product10
        ])
    }
}
