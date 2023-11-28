import SwiftUI

struct OrangeButton: View {
    
    var buttonText: String
    var buttonImage: Image
    
    var body: some View {
        
        Button {
            
        } label: {
            HStack {
                Image("orangeButton")
                    .resizable()
                    .frame(width: 250.0, height: 100.0)
                    .overlay(
                        (Text(buttonImage) + Text(buttonText))
                            .foregroundColor(.white)
                            .font(.system(size: 36))
                            .fontWeight(.heavy)
                        , alignment: .center
                    )
            }
            
        }
        
    }
}

#Preview {
    OrangeButton(buttonText: "", buttonImage: Image(systemName: "magnifyingglass"))
}
