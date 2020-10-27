//
//  Ricicla2View.swift
//  tabvView
//
//  Created by Pasquale on 25/10/2020.
//

import SwiftUI

struct Ricicla2View: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    @ObservedObject var nomeV = DataScore.shared
    @State var textRicerca: String = ""
    var prodotti : [Prodotti] = [
        Prodotti(number: 0,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 1,nome: "Cup", materiale: "plastic", peso: 4),
        Prodotti(number: 2,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 3,nome: "Cup", materiale: "plastic", peso: 20),
        Prodotti(number: 4,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 5,nome: "Cup", materiale: "plastic", peso: 20),
        Prodotti(number: 6,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 7,nome: "Cup", materiale: "plastic", peso: 20),
        Prodotti(number: 8,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 9,nome: "Cup", materiale: "plastic", peso: 20),
        Prodotti(number: 10,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 11,nome: "Cup", materiale: "plastic", peso: 20),
        Prodotti(number: 12,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 13,nome: "Cup", materiale: "plastic", peso: 20),
        Prodotti(number: 14,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 15,nome: "Cup", materiale: "plastic", peso: 20),
        Prodotti(number: 16,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 17,nome: "Cup", materiale: "plastic", peso: 20),
        Prodotti(number: 18,nome: "Bottle 2l", materiale: "plastic", peso: 80),
        Prodotti(number: 19,nome: "Cup", materiale: "plastic", peso: 20)
    ]
    
    @State var contatoreTotale = [Int](repeating: 0, count: 200)
    
    @State var valore : Float = 0.0

    var body: some View {
        ZStack{
            GeometryReader { geometry in
                Image("homeL")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea([.top,.bottom])
                    .frame(width: geometry.size.width)}
                .navigationBarBackButtonHidden(true)
                                .navigationBarItems(leading: Button(action : {
                                    self.mode.wrappedValue.dismiss()
                                }){
                                    Image(systemName: "arrow.left")
                                        .foregroundColor(Color.black)
                                })
            VStack{
            Text("Search").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            SearchBar(text: $textRicerca).padding()
            ScrollView{
                ForEach( self.prodotti.filter{ self.textRicerca.isEmpty ? true :  $0.nome.lowercased()
                            .prefix(textRicerca.count) .contains(textRicerca.lowercased())}) {nomeP in
                            
                        HStack{
                            Stepper(value: $contatoreTotale[nomeP.number], in: 0...10, label: {
                                VStack(alignment: .leading) {
                                    HStack{
                                        Text(nomeP.nome)
                                        .fontWeight(.bold)
                                        Spacer()
                                        Text("\(contatoreTotale[nomeP.number])")}
                                }
                                Spacer()
                            })
                        }
                    }                
            }
            .navigationBarTitle("Search", displayMode: .inline)
        .padding(.top, 0)
            Button(action: {
                valore = Converti(product: prodotti, cont: contatoreTotale)
                nomeV.punteggio += Int(valore)
            }, label: {
                Text("Ricicla")
            })
            Text("\(Int(valore)) g di CO2")
            Spacer()
            
        }.padding()
        }.gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
            
            if(value.startLocation.x < 20 && value.translation.width > 100) {
                self.mode.wrappedValue.dismiss()
            }
            
        }))

    }
}

struct Ricicla2View_Previews: PreviewProvider {
    static var previews: some View {
        Ricicla2View()
    }
}
