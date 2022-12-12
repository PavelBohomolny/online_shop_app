//
//  ShopView.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import SwiftUI

struct ShopView: View {
    
    @EnvironmentObject var shopVM: ShopViewModel
    
    var body: some View {
        ZStack {
            // products
            products
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

extension ShopView {
    // products
    @ViewBuilder private var products: some View {
        let columns: [GridItem] = [GridItem(.fixed(Settings.shared.productCardsSize), spacing: 15, alignment: nil),
                                   GridItem(.fixed(Settings.shared.productCardsSize), spacing: 15, alignment: nil)]
        ScrollView(.vertical, showsIndicators: true) {
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 15,
                      pinnedViews: []) {
                ForEach(shopVM.products) { product in
                    // product card view
                    ProductCardView(product: product)
                }
            }
        }
    }
}
