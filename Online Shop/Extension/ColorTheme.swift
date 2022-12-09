//
//  ColorTheme.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 09/12/2022.
//

import SwiftUI

extension Color {
    static let palette = Palette()
}

struct Palette {
    let child: Color = Color("child")
    let parent: Color = Color("parent")
}
