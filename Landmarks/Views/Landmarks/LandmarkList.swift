//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Pham Quan Khiet Luan on 7/17/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData;
    @State private var showFavoriteOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            landmark in !showFavoriteOnly || landmark.isFavorite
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([
            "iPhone SE (1st generation)",
//            "iPhone SE (2nd generation)",
//            "iPhone 12 mini",
        ], id: \.self) { deviceName in
            LandmarkList()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
