import SwiftUI
import CommonFoundation
import DesignSystem

public struct ContentView: View {
    public init() {}

    public var body: some View {
        VStack {
            Text("Hello, \(foo())!")
                .padding()
            
            Text("Design system version: \(DesignSystem.version)")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
