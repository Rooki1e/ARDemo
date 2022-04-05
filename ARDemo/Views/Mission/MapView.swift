/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that presents a map of a landmark.
*/

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var appModel:AppModel
    @Binding var region: MKCoordinateRegion
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

//struct MapView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        MapView()
//    }
//}
