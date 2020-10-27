import SwiftUI
struct ContentView: View {
    
    var body: some View {
        CustomView()
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
        
    }
    
}

struct CustomView: View{
    @State private var selection : Int=0
    var body: some View {
        
        TabView(selection: $selection){
            HomeView()
                .tabItem { Text("Home")
                    Image(systemName: "house")
                        .font(.system(size: 60)).imageScale(.large)
                }.tag(0)
            
            RiciclaView()
                .tabItem {
                    Image("Raster")
                }.tag(1)
            
            TaskEditView()
                .tabItem { Text("Week Planner")
                    Image("week")
                }.tag(2) .accentColor(.blue)
            
        }.accentColor(.white).font(.body)
        //        Serve per cambiare colore della scritta sulle icone
        
    }
}


extension UITabBarController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let standardAppearance = UITabBarAppearance()
        standardAppearance.backgroundColor = .red
        standardAppearance.shadowColor = .green
        standardAppearance.backgroundImage = UIImage(named: "verdeF")
        tabBar.standardAppearance = standardAppearance
    }
}
