//
//  Absence_RecorderApp.swift
//  Absence Recorder
//
//  Created by Alexander Bater on 27/01/2023.
//

import SwiftUI

@main
struct Absence_RecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
