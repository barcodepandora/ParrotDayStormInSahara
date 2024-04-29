//
//  RectangleBarChartRaceView.swift
//  ParrotDayStormInSahara
//
//  Created by Juan Manuel Moreno on 29/04/24.
//

import SwiftUI

struct RectangleBarChartRaceView: View {
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 98 + CGFloat(LifecycleManager.shared.aClockForTheLifecycle.counter), height: 42)
                .foregroundColor(Color.blue)
                .animation(Animation.easeInOut(duration: 0.5), value: 0.0)
            Spacer()
        }
    }
}

#Preview {
    RectangleBarChartRaceView()
}
