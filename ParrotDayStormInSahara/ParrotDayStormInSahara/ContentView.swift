//
//  ContentView.swift
//  ParrotDayStormInSahara
//
//  Created by Juan Manuel Moreno on 29/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var thisIsASingleton = LifecycleManager.shared
    @State var thisIsAFoo = 1
    var timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Ready 4 Networking")
            BarChartRaceView()
        }
        .onReceive(timer) { _ in
            LifecycleManager.shared.aClockForTheLifecycle.counter += 1
            print(LifecycleManager.shared.aClockForTheLifecycle.counter)
            thisIsAFoo += 1
        }
//        .padding()
        
    }
}

#Preview {
    ContentView()
}
