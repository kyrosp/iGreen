//
//  Product.swift
//  iGreen_TE
//
//  Created by Alfonso Formisano on 26/10/2020.
//

import Foundation

struct Product: Hashable, Identifiable {
    var id: String { name }
    var name: String
    var code: String
}
