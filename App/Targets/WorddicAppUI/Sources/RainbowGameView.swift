import SwiftUI

struct Line {
    var points = [CGPoint]()
    var color: Color = .blue
    var lineWidth: Double = 1.0
}

struct RainbowGameView: View {
    
    @State private var selectedColor: Color = .blue
    @State private var currentLine = Line()
    @State private var lines: [Line] = []
    @State private var thickness: Double = 1.0
    
    private let colors: [Color] = [.red, .yellow, .orange, .purple, .blue, .indigo, .green, .black, .white]
    
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
                
                VStack {
                    OrangeButton(buttonText: "Find123", buttonImage: Image(systemName: "plus.app"))
                    ColorPickerView(selectedColor: $selectedColor)
                        .onChange(of: selectedColor) {newColor in
                            currentLine.color = newColor
                        }
                    
                    HStack {
                        Text("Thickness")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                          //  .fontWeight(.heavy)
                        
                        
                        Slider(value: $thickness, in: 1...20)
                            .frame(maxWidth: 220)
                            .onChange(of: thickness) {
                                newThickness in currentLine.lineWidth = newThickness
                                
                            }
                        //  Divider()
 
                    }
                }
                
//                Spacer()
                
                Canvas { context, size in
                    
                    for line in lines {
                        var path = Path()
                        path.addLines(line.points)
                        context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                    }
                    
                }
                .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                .onChanged({ value in
                    let newPoint = value.location
                    self.currentLine.points.append(newPoint)
                    self.lines.append(self.currentLine)
                })
                .onEnded({ value in
                    self.currentLine = Line(points: [], color: selectedColor, lineWidth: thickness)
                })
                )
                .padding()
                .background(.thinMaterial)
                .cornerRadius(20)
                .padding(.horizontal)
                
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
    RainbowGameView()
}
