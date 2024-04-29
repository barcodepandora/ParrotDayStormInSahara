//
//  LifecycleManager.swift
//  ParrotDayStormInSahara
//
//  Created by Juan Manuel Moreno on 29/04/24.
//

import Foundation

class LifecycleManager: ObservableObject {
    
    static let shared = LifecycleManager()
    var aClockForTheLifecycle: AClockForTheLifecycle
    
    init() {
        aClockForTheLifecycle = AClockForTheLifecycle()
    }
}

class AClockForTheLifecycle: ObservableObject {
    @Published var counter = 0
}
