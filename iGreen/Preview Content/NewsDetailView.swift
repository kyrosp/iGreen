//
//  NewsDetailView.swift
//  tabvView
//
//  Created by Giosue on 26/10/2020.
//

import SwiftUI

struct NewsDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    var Notizie: News
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                Image(Notizie.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 360, height: 380)
                
                Group {
                    Text(Notizie.title)
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                        
                    Text(Notizie.sottotitolo)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                    
                }
                .padding(.bottom,0)
                .padding(.horizontal)
                Text(Notizie.contenuto)
                    .font(.body)
                    .padding()
                    .lineLimit(1000)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
            }
            
            
            
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.mode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.left.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.black)
            
        }))
        
        }
       
    }
    



struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(Notizie: News(title: "Titolo",sottotitolo: "Sottotilo", image: "VerdeF", contenuto: "cont", fonte: "fonte" ))
    }
}
