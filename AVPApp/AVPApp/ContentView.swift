import SwiftUI

struct ContentView: View {
    // State to control the traffic light color
    @State private var isRedLightOn = false
    
    var body: some View {
        VStack {
            // Traffic light pole (simulating with a Rectangle and a Circle)
            VStack(spacing: 20) {
                // Traffic light - the circle changes color based on button press
                Circle()
                    .fill(isRedLightOn ? Color.red : Color.green) // Change between red and green
                    .frame(width: 100, height: 100)
                
                // Text below the traffic light
                Text(isRedLightOn ? "Stop" : "Go")
                    .font(.largeTitle)
                    .foregroundColor(isRedLightOn ? .red : .green)
            }
            .padding()

            // Spacer to separate the traffic light from the button
            Spacer()

            // Stop sign button
            Button(action: {
                // Action to change the traffic light color to red
                isRedLightOn = true
            }) {
                Text("STOP")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 200, height: 200)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 4))
            }
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

