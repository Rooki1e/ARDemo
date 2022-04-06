//
//  OnMissionView.swift
//  ARDemo
//
//  Created by rick on 2022/4/6.
//

import SwiftUI

struct OnMissionView: View {
    
    @EnvironmentObject var appModel: AppModel
    
    var body: some View {
        let mission = appModel.currentMission
        VStack(alignment: .center) {
            VStack {
                HStack {
                    Text("进行中的任务")
                    Text(mission.name)
                }.padding()
            }
            Spacer()
            if appModel.showTips {
                Text(mission.tips!).font(.largeTitle)
            }
            Spacer()
        }.foregroundColor(.white)
    }
}

struct OnMissionView_Previews: PreviewProvider {
    static var previews: some View {
        OnMissionView()
            .environmentObject(AppModel())
            .background(.black)
    }
}
