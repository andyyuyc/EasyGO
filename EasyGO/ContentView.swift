import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State private var isFunctionExecuted = false
    
    var body: some View {
        
        TabView(selection: $selection) {
            Stop()
                .tabItem {
                    
                }
                .tag(0)
            
            Route()
                .tabItem {
                    
                }
                .tag(1)
            
            Request()
                .tabItem {
                    
                }
                .tag(2)
            
            Message()
                .tabItem {
                    
                }
                .tag(3)
            
            
            Profile()
                .tabItem {
                    
                }
                .tag(4)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
