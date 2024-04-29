//
//  RectangleWrapperView.swift
//  ParrotDayStormInSahara
//
//  Created by Juan Manuel Moreno on 29/04/24.
//

import SwiftUI

struct RectangleWrapperView: View {
    
    var thisIssAState: CGFloat?
    
    init(thisIssAState: CGFloat) {
        self.thisIssAState = thisIssAState
    }
    
    var body: some View {
        Rectangle()
            .frame(width: 98 + thisIssAState!, height: 42)
            .foregroundColor(Color.blue)
            .animation(Animation.easeInOut(duration: 0.5), value: 0.0)

    }
}

#Preview {
    RectangleWrapperView(thisIssAState: 1)
}
