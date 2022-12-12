//
//  ProductCardView.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 12/12/2022.
//

import SwiftUI

struct ProductCardView: View {
    
    let product: ProductModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            // product image
            Image(product.image)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 8))
            .frame(width: Settings.shared.productCardsSize, height: Settings.shared.productCardsSize)
            
            // product data
            Text(product.id)
                .lineLimit(1)
                .font(.subheadline)
                .foregroundColor(Color.palette.child.opacity(0.88))
                .padding(.top, 5)
        }
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: ShopViewModel.sampleProduct)
    }
}
