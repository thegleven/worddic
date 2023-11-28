import SwiftUI

struct FindGameView: View {
    var body: some View {
        
        ZStack {
            //fon
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                
                HStack {
                    
                    Button(action: {}) {
                        Image(systemName: "arrowshape.backward")
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "gearshape")
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                            .foregroundColor(.black)
                    }
                }
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {}) {
                        HStack {
                            Image("whiteButton")
                                .resizable()
                                .frame(width: 160.0, height: 80.0)
                                .overlay(
                                    Text("said")
                                        .foregroundColor(.black)
                                        .font(.system(size: 36))
                                        .fontWeight(.heavy)
                                    , alignment: .center
                                )
                        }
                    }
                    Spacer()
                    Button(action: {}) {
                        HStack {
                            Image("whiteButton")
                                .resizable()
                                .frame(width: 160.0, height: 80.0)
                                .overlay(
                                    Text("up")
                                        .foregroundColor(.black)
                                        .font(.system(size: 36))
                                        .fontWeight(.heavy)
                                    , alignment: .center
                                )
                        }
                    }
                    Spacer()
                }
                HStack {
                    Spacer()
                    Button(action: {}) {
                        HStack {
                            Image("whiteButton")
                                .resizable()
                                .frame(width: 160.0, height: 80.0)
                                .overlay(
                                    Text("we")
                                        .foregroundColor(.black)
                                        .font(.system(size: 36))
                                        .fontWeight(.heavy)
                                    , alignment: .center
                                )
                        }
                    }
                    Spacer()
                    Button(action: {}) {
                        HStack {
                            Image("whiteButton")
                                .resizable()
                                .frame(width: 160.0, height: 80.0)
                                .overlay(
                                    Text("at")
                                        .foregroundColor(.black)
                                        .font(.system(size: 36))
                                        .fontWeight(.heavy)
                                    , alignment: .center
                                )
                        }
                    }
                    Spacer()
                }
                Spacer()
                HStack{
                    Button(action: {}) {
                        HStack {
                            Image("orangeButton")
                                .resizable()
                                .frame(width: 150.0, height: 80.0)
                                .overlay(
                                    Image(systemName: "arrow.clockwise")
                                        .foregroundColor(.white)
                                        .font(.system(size: 36))
                                        //.fontWeight(.heavy)
                                    , alignment: .center
                                )
                        }
                    }
                }
            }
            
            .padding()
        }
    }
}

#Preview {
    FindGameView()
}
