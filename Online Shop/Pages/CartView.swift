//
//  CartView.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ZStack {
            Text("Cart")
                .font(.largeTitle)
                .foregroundColor(Color.palette.child)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
