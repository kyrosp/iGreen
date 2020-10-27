//
//  HomeView.swift
//  tabvView
//
//  Created by Pasquale on 24/10/2020.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var nomeV = DataScore.shared

    @State var cambioP : Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                
                GeometryReader { geometry in
                    Image("homeL")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea([.top])
                        .frame(width: geometry.size.width)}
                Text("\(nomeV.punteggio)")
                Text("")                   .navigationBarItems(trailing:
                    Button(action: {self.cambioP.toggle()}) {
                    Image("Profilo").resizable().clipShape(Circle()).aspectRatio(contentMode: .fit).frame(width: 50, height: 50)})
 
            }

        }.sheet(isPresented: $cambioP) {
            ProfileView()
            }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

