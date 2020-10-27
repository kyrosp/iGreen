//
//  NewsView.swift
//  tabvView
//
//  Created by Giosue on 26/10/2020.
//

import SwiftUI

struct NewsView: View {
    var Notizie: [News] = [
        News.init(title: "Climate change: 'Dangerous and dirty' used cars sold to Africa", sottotitolo: "Millions of highly polluting used cars from rich countries are being 'dumped' on developing nations, according to a UN report.", image: "VerdeF", contenuto: "Between 2015 and 2018, some 14 million older, poor quality vehicles were exported from Europe, Japan and the US.\nFour out of five were sold to poorer countries, with more than half going to Africa.\nExperts say that up to 80% failed to meet minimum safety and environmental standards in exporting countries.\nAs well as causing accidents, these cars make air pollution worse and contribute heavily to climate change.\nMany of the vehicles have also been tampered with to remove valuable parts.\nThe report, published by the UN Environment Programme (Unep), says that both exporters and importers need to put tougher regulations in place to stem the flow of these cars.\n'Cooling paint' could cut emissions from buildings\nAttenborough polar ship leaves construction yard. Satellites picture methane across the globe\nCar ownership is booming all over the world with an estimated 1.4bn vehicles on the roads, a number that's expected to reach around two billion by 2040.", fonte: "BBC"),
        News.init(title: "TITOLO", sottotitolo: "Sottotitolo", image: "homeL", contenuto: "CONTENUTO", fonte: "FONTE"),
        News.init(title: "TITOLO", sottotitolo: "Sottotitolo", image: "homeL", contenuto: "CONTENUTO", fonte: "FONTE"),
        News.init(title: "TITOLO", sottotitolo: "Sottotitolo", image: "homeL", contenuto: "CONTENUTO", fonte: "FONTE"),
        News.init(title: "TITOLO", sottotitolo: "Sottotitolo", image: "homeL", contenuto: "CONTENUTO", fonte: "FONTE"),]
    
    var body: some View {
        
        NavigationView{
           
            List(Notizie,id: \.id,rowContent: { j in
                NavigationLink(
                    destination: NewsDetailView(Notizie: j),
                    label: {
                        prova(i: j)
                    })
            }).navigationBarTitle("News")
            }
    }
    
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

struct prova: View {
    let i:News
    var body: some View {
        HStack{
            Image(i.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 80)
                .cornerRadius(8)
                .padding([.top,.bottom])
            
            
            VStack(alignment: .leading){
                Text(i.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Fonte: \(i.fonte)")
                   

            }
            
        }
    }
}
