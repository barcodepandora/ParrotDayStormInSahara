//
//  BarChartRaceView.swift
//  ParrotDayStormInSahara
//
//  Created by Juan Manuel Moreno on 29/04/24.
//

import SwiftUI

struct BarChartRaceView: View {
    
    @State var theArrayOfHowLong: [CGFloat] = [98]
    
    init() {
        doIt()
    }
    
    func doIt() {
        print("Este curso es")
    }
    
    var body: some View {
        RectangleBarChartRaceView()
    }
}
//        Button("Test width") {
//            
//            withAnimation {
//                aWidth = 198
//            }
//        }

#Preview {
    BarChartRaceView()
}
