
import SwiftUI

struct Testiamo: View {

    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                NavigationLink(
                                               destination: RiciclaView(),
                                               label: {
                                                   Image(systemName: "house").renderingMode(.original)
                                               })
                
            }
        }
    }
}

struct Testiamo_Previews: PreviewProvider {
    static var previews: some View {
        Testiamo()
    }
}
