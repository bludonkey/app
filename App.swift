import SwiftUI

@main struct App: SwiftUI.App {
    
    var body: some Scene {
        WindowGroup {
            TabView {
                Circle()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }.tag(0)
                Circle()
                    .tabItem {
                        Image(systemName: "slider.horizontal.3")
                    }.tag(1)
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}
