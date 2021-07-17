//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Pham Quan Khiet Luan on 7/16/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
