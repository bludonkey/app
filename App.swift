import SwiftUI

@main struct App: SwiftUI.App {
    @UIApplicationDelegateAdaptor(Delegate.self) var delegate
    @State private var session = Session()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                Home(session: $session)
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                Create(session: $session)
                    .tabItem {
                        Image(systemName: "map.fill")
                    }
                Circle()
                    .tabItem {
                        Image(systemName: "slider.horizontal.3")
                    }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}
