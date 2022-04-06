//
//  HomeView.swift
//  ARDemo
//
//  Created by rick on 2022/4/6.
//

import SwiftUI

struct HomeView: View {
    
    @State var displayAR: Bool = true
    @State var onMission: Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            ARViewContainer(displayAR: $displayAR)
                .edgesIgnoringSafeArea([.top])
            if(onMission){
                OnMissionView()
            }else{
                NormalView(displayAR: $displayAR, onMission: $onMission
                )
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(AppModel())
    }
}
