import SwiftUI

struct MainView: View {
    
    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        ZStack {
            //fon
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                Button(action: {
                    openWindow(id: "first")
                }) {
                    HStack {
                        Image("orangeButton")
                            .resizable()
                            .frame(width: 250.0, height: 100.0)
                            .overlay(
                                (Text(Image(systemName: "magnifyingglass")) + Text(" Find"))
                                    .foregroundColor(.white)
                                    .font(.system(size: 36))
                                    .fontWeight(.heavy)
                                , alignment: .center
                            )
                    }
                }
                
                Button(action: {}) {
                    HStack {
                        Image("orangeButton")
                            .resizable()
                            .frame(width: 250.0, height: 100.0)
                            .overlay(
                                (Text(Image(systemName: "rainbow")) + Text(" Draw"))
                                    .foregroundColor(.white)
                                    .font(.system(size: 36))
                                    .fontWeight(.heavy)
                                , alignment: .center
                            )
                    }
                }
                
              

            }
        }
    }
    
}
#Preview {
    MainView()
}
