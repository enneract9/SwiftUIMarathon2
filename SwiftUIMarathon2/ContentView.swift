import SwiftUI

struct ContentView: View {
    @State var containerWidth: CGFloat = 300
    
    var body: some View {
        VStack {
            container()
            Slider(value: $containerWidth, in: 100...300)
        }
        .padding()
    }
    
    private func container() -> some View {
        Group {
            Text("Марафон ")
                .foregroundStyle(.secondary)
            + Text("по SwiftUI ")
                .bold()
            + Text("«Отцовский пинок»")
                .bold()
                .foregroundStyle(.blue)
                .font(.title)
        }
        .frame(width: containerWidth, height: 200)
        .border(.red)
    }
}

#Preview {
    ContentView()
}
