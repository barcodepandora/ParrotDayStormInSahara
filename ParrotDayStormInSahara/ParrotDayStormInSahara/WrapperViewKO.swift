//
//  WrapperViewKO.swift
//  ParrotDayStormInSahara
//
//  Created by Juan Manuel Moreno on 29/04/24.
//
//  This is the INCORRECT solution for use @State with Singleton
//

import SwiftUI

struct WrapperViewKO: View {

    @State var thisIsAFoo = LifecycleManager.shared
    var timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

    var body: some View {
        RectangleWrapperView(thisIssAState: CGFloat(thisIsAFoo.aClockForTheLifecycle.counter))
            .onReceive(timer) { _ in
                thisIsAFoo.aClockForTheLifecycle.counter += 1
            }

    }
}

#Preview {
    WrapperViewKO()
}
