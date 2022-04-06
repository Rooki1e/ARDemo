//
//  MissionModel.swift
//  ARDemo
//
//  Created by rick on 2022/4/3.
//

import Foundation
import MapKit

struct MissionModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let detail: String
    let location: CLLocationCoordinate2D
    let locationLabel: String
    var tips: String? = nil
    var region: MKCoordinateRegion {
        get {
            return MKCoordinateRegion(
                center: location,
                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            )
        }
    }
    let distance: Float?
}
