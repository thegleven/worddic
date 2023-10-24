import SwiftUI

public struct MainView: View {
    public init() {}

    public var body: some View {
        ZStack {
            //fon
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                
                HStack {
                    Spacer()
                    VStack{
                        Button(action: {}) {
                            Image(systemName: "gearshape")
                                .resizable()
                                .frame(width: 30.0, height: 30.0)
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                }

                Spacer()
                
                Button(action: {}) {
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
                
                Spacer()
                
                Button(action: {}) {
                    HStack {
                        Image("orangeButton")
                            .resizable()
                            .frame(width: 250.0, height: 100.0)
                            .overlay(
                                (Text(Image(systemName: "rectangle.portrait.and.arrow.forward")) + Text(" Exit"))
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .fontWeight(.heavy)
                                , alignment: .center
                            )
                    }
                }
                
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
