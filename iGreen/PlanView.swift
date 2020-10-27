//
//  PlanView.swift
//  tabvView
//
//  Created by Pasquale on 24/10/2020.
//

import SwiftUI

struct PlanView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image("SfondoRicicla")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea([.top])
                        .frame(width: geometry.size.width)
                    }

        }
        
    }
}

struct PlanView_Previews: PreviewProvider {
    static var previews: some View {
        PlanView()
    }
}
