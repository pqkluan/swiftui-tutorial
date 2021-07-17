//
//  Landmark.swift
//  Landmarks
//
//  Created by Pham Quan Khiet Luan on 7/17/21.
//

import CoreLocation
import Foundation
import SwiftUI

//"category": "Rivers",
//"city": "Twentynine Palms",
//"isFeatured": true,
//"isFavorite": true,
//"coordinates": {
//    "longitude": -116.166868,
//    "latitude": 34.011286
//},
//
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
