//
//  ProductDetailView.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 12/12/2022.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductModel
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                // product images
                productImages
                
                // product data
                VStack(alignment: .leading, spacing: 5) {
                    // product article
                    productArticle
                    
                    // product brand
                    productBrand
                    
                    // product name
                    productName
                    
                    // product description
                    productDescription
                    
                    // product cost
                    productCost
                }
                .padding()
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

extension ProductDetailView {
    // product images
    private var productImages: some View {
        TabView {
            Image(product.image)
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
    }
    
    // product article
    private var productArticle: some View {
        Text(product.article)
            .foregroundColor(Color.palette.child)
    }
    
    // product brand
    private var productBrand: some View {
        Text(product.brand.rawValue)
            .foregroundColor(Color.palette.child)
    }
    
    // product name
    private var productName: some View {
        Text(product.name)
            .foregroundColor(Color.palette.child)
    }
    
    // product description
    private var productDescription: some View {
        Text(product.description)
            .foregroundColor(Color.palette.child)
    }
    
    // product cost
    private var productCost: some View {
        Text("€ \(product.cost.twoDecimalPlaces())")
            .foregroundColor(Color.palette.child)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: ShopViewModel.sampleProduct)
    }
}
