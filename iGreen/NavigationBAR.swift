////
////  NavigationBAR.swift
////  tabvView
////
////  Created by Pasquale on 25/10/2020.
////
//
//import SwiftUI
//
//struct ProgressBar: View {
//    @Binding var value: Float
//    
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack(alignment: .leading) {
//                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
//                    .opacity(0.3)
//                    .foregroundColor(Color(UIColor.systemTeal))
//                
//                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
//                    .foregroundColor(Color(UIColor.systemBlue))
//                    .animation(.linear)
//            }.cornerRadius(45.0)
//        }
//    }
//}
//
//struct NavigationBAR: View {
//    @State var progressValue: Float = 0.0
//    
//    var body: some View {
//        VStack {
//            ProgressBar(value: $progressValue).frame(height: 20)
//            
//            Button(action: {
//                self.startProgressBar()
//
//            }) {
//                Text("Start Progress")
//            }.padding()
//            
//            Button(action: {
//                self.resetProgressBar()
//            }) {
//                Text("Reset")
//            }
//            
//            Spacer()
//        }.padding()
//    }
//    
//    func startProgressBar() {
//        self.progressValue += 0.50
//        if remainder(progressValue, 1.0) == 0{
//            self.progress
//        }
//    }
//    
//    func resetProgressBar() {
//        self.progressValue = 0.0
//    }
//}
//
//
//struct NavigationBAR_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBAR()
//    }
//}
