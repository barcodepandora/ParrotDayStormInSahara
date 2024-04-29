//
//  WrapperView.swift
//  ParrotDayStormInSahara
//
//  Created by Juan Manuel Moreno on 29/04/24.
//

import SwiftUI

struct WrapperView: View {
    
    @State var thisIsAFoo = LifecycleManager.shared.aClockForTheLifecycle.counter
    var timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

    var body: some View {
        RectangleWrapperView(thisIssAState: CGFloat(thisIsAFoo))
            .onReceive(timer) { _ in
                thisIsAFoo += 1
                print(thisIsAFoo)
            }

    }
}

#Preview {
    WrapperView()
}
