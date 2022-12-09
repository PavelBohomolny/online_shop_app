//
//  ShopView.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ZStack {
            Text("Shop")
                .font(.largeTitle)
                .foregroundColor(Color.palette.child)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
