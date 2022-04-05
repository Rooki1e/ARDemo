//
//  MissionView.swift
//  ARDemo
//
//  Created by rick on 2022/4/3.
//

import SwiftUI
import MapKit

struct MissionView: View {
    
    @EnvironmentObject var appModel: AppModel
    @State var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 28.19407, longitude: 112.94752),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    var body: some View {
        ZStack {
            MapView(region: $region)
                .ignoresSafeArea(edges: .top)
            ScrollView {
                ForEach(appModel.missions.indices) { idx in
                    let mission = appModel.missions[idx]
                    MissionCard(
                        name: mission.name,
                        location: mission.locationLabel,
                        distance: 100,
                        detail: mission.detail
                    )
                    .onTapGesture {
                            appModel.update(missionsIdx: idx)
                            region = MKCoordinateRegion(
                                center: mission.location,
                                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                            )
                    }
                    Divider()
                }
            }
            .background(.white.opacity(0.7))
        }
    }
}

struct MissionView_Previews: PreviewProvider {
    static var previews: some View {
        MissionView().environmentObject(AppModel())
    }
}
