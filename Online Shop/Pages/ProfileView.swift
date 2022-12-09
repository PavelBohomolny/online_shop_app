//
//  ProfileView.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Text("Profile")
                .font(.largeTitle)
                .foregroundColor(Color.palette.child)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
