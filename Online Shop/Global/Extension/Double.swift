//
//  Double.swift
//  Online Shop
//
//  Created by Pavel Bohomolnyi on 12/12/2022.
//

import Foundation

extension Double {
    func twoDecimalPlaces() -> String {
        return String(format: "%.2f", self)
    }
}
