//
//  RiciclaView.swift
//  tabvView
//
//  Created by Pasquale on 24/10/2020.
//

import SwiftUI

struct RiciclaView: View {
    @ObservedObject var nomeV = DataScore.shared
    @State var cambioP : Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                //Immagine sfondo
                GeometryReader { geometry in
                    Image("SfondoRicicla")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea([.top])
                        .frame(width: geometry.size.width)}
                VStack{
                //Button Tastiera
                NavigationLink(
                    destination: Ricicla2View(),
                    label: {
                        HStack{
                            Text("Usa la tastiera").fontWeight(.semibold).font(.title)
                            Text("  ")
                            Image(systemName: "keyboard")
                                .resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80).foregroundColor(.white)
                        }.padding().foregroundColor(.white).background(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)).cornerRadius(40)
                    })
                    Text("\n")
                NavigationLink(
                    destination: Ricicla2View(),
                    label: {
                        HStack{
                            Image(systemName: "camera")
                                .resizable().aspectRatio(contentMode: .fit).frame(width: 75, height: 75).foregroundColor(.white)
                            Text("  ")
                            Text("Usa la fotocamera").fontWeight(.semibold).font(.title)
                        }.padding().foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)).cornerRadius(40)
                    })
                }
                
            }
            
        }
        
    }
}

struct RiciclaView_Previews: PreviewProvider {
    static var previews: some View {
        RiciclaView()
    }
}
