//
//  ContentView.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import SwiftUI

enum TabItems: String, CaseIterable {
    case home = "house.fill"
    case shop = "list.bullet"
    case cart = "cart.fill"
    case profile = "person.crop.circle.fill"
}

struct OnlineShopView: View {
    
    @Namespace private var tabBarNameSpace
    @State private var selectedTab: TabItems = .shop
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // show pages
                pages
                Spacer(minLength: 10)
                // tab bar
                tabBar
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

extension OnlineShopView {
    // pages
    @ViewBuilder private var pages: some View {
        switch selectedTab {
        case .home:
            HomeView()
        case .shop:
            ShopView()
        case .cart:
            CartView()
        case .profile:
            ProfileView()
        }
    }
    
    // tab bar
    private var tabBar: some View {
        HStack(spacing: 0) {
            ForEach(TabItems.allCases, id: \.self) { tabItem in
                ZStack {
                    if selectedTab == tabItem {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.palette.child)
                            .matchedGeometryEffect(id: "tabs", in: tabBarNameSpace)
                            .frame(width: UIScreen.main.bounds.width / 6)
                    }
                    Image(systemName: tabItem.rawValue)
                        .foregroundColor(selectedTab == tabItem ? Color.palette.parent : Color.palette.child)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .onTapGesture {
                    withAnimation(.linear) {
                        selectedTab = tabItem
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 37)
    }
}

