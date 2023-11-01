import SwiftUI
import WorddicAppUI

@main
struct WorddicApp: App {
    var body: some Scene {
        //        WindowGroup {
        //            MainView()
        //        }
        
        //        WindowGroup(id: "first") {
        //            FindGameSettingsView()
        //        }
        //        .modelContainer(for: FindGameDataItem.self)
        //    }
        //}
        
        WindowGroup {
            RainbowGameView()
        }
    }
}
