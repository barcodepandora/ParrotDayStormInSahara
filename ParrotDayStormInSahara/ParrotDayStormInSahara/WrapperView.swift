//
//  WrapperView.swift
//  ParrotDayStormInSahara
//
//  Created by Juan Manuel Moreno on 29/04/24.
//

import SwiftUI

struct WrapperView: View {
    
    @State var thisIsAFoo = 1
    var timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        RectangleWrapperView(thisIssAState: CGFloat(thisIsAFoo))
            .onReceive(timer) { _ in
                thisIsAFoo += 1
            }

    }
}

#Preview {
    WrapperView()
}
