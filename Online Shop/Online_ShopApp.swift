//
//  Online_ShopApp.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import SwiftUI
import FirebaseCore

@main
struct Online_ShopApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject private var shopVM: ShopViewModel = ShopViewModel()
    
    var body: some Scene {
        WindowGroup {
            OnlineShopView()
                .environmentObject(shopVM)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
