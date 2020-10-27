//
//  Navigation.swift
//  FirstTry
//
//  Created by Romeo Velvi on 24/10/2020.
//

import SwiftUI

struct Navigation: View {
    enum FT{
        case main
//        case one
//        case two
//        case three
    }
    
    let filter: FT
    
    var body: some View {
        switch filter {
        case .main:
            RiciclaView()
//        case .one:
//            ONE()
//        case .two:
//            TWO()
//        case .three:
//            THREE()
        }
    }
}

