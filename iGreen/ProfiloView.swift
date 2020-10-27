//
//  ProfiloView.swift
//  tabvView
//
//  Created by Pasquale on 24/10/2020.
//


import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        Profile()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct Profile : View {
    
    var body : some View{
        
        ZStack{
            
            GeometryReader { geometry in
                Image("SfondoRicicla")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea([.top,.bottom])
                    .frame(width: geometry.size.width)
                
            }
            
            VStack{
                
                HStack{
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("home").renderingMode(.original).resizable().frame(width: 20, height: 20)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("close").renderingMode(.original).resizable().frame(width: 20, height: 20)
                    }
                }
                
                Spacer()
                
                ZStack(alignment: .top) {
                    
                    VStack{
                        
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("Nome, Cognome").font(.title)
                                Text("25")
                            }
                            
                            Spacer()
                            
                            HStack(spacing: 8){
                                
                                Image("map").resizable().frame(width: 15, height: 20)
                                
                                Text("PUNTI")
                                
                            }.padding(8)
                            .background(Color.black.opacity(0.1))
                            .cornerRadius(10)
                        }.padding(.top,35)
                        
                        Text("Descrizione Profilo").padding(.top)
                        
                    }.padding()
                    .background(Blurview())
                    .clipShape(BottomShape())
                    .cornerRadius(25)
                    
                    ZStack{
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("play").renderingMode(.original).resizable()
                            .frame(width: 20, height: 20)
                            .padding(20)
                            .background(Color.white)
                            .clipShape(Circle())
                        }
                        
                        Circle().stroke(Color.yellow, lineWidth: 5).frame(width: 70, height: 70)
                        
                    }.offset(y: -35)
                    
                    HStack{
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("heart").renderingMode(.original).resizable()
                                .frame(width: 25, height: 20)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("smile").renderingMode(.original).resizable()
                                .frame(width: 25, height: 25)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                        }.offset(y: -25)
                        .padding(.horizontal,35)
                }
                
            }.padding()
        }
    }
}

struct BottomShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in

            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addArc(center: CGPoint(x: rect.width / 2, y: 0), radius: 42, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: false)
            
        }
    }
}

struct Blurview : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<Blurview>) -> UIVisualEffectView {
        
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialLight))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Blurview>) {
        
        
    }
}
