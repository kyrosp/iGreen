//
//  ProfiloView.swift
//  tabvView
//
//  Created by Pasquale on 24/10/2020.
//

import SwiftUI

struct ProfiloView: View {
    var body: some View {
        ZStack {
            
            GeometryReader { geometry in
                Image("SfondoRicicla")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea([.top,.bottom])
                    .frame(width: geometry.size.width)
                
            }
            
            Text("CIAOOO Ecco il tuo profilo")
        }
        
    }
}

struct ProfiloView_Previews: PreviewProvider {
    static var previews: some View {
        ProfiloView()
    }
}
