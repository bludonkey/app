import SwiftUI

@main struct App: SwiftUI.App {
    @State private var session = Session()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                Home(session: $session)
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                    .tag(0)
                Circle()
                    .tabItem {
                        Image(systemName: "map.fill")
                    }
                    .tag(1)
                Circle()
                    .tabItem {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}
