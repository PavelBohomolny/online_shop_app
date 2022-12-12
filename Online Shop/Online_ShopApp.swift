//
//  Online_ShopApp.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import SwiftUI

@main
struct Online_ShopApp: App {
    
    @StateObject private var shopVM: ShopViewModel = ShopViewModel()
    
    var body: some Scene {
        WindowGroup {
            OnlineShopView()
                .environmentObject(shopVM)
        }
    }
}
