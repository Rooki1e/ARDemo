//
//  HomeView.swift
//  ARDemo
//
//  Created by rick on 2022/3/30.
//

import SwiftUI

struct NormalView: View {
    
    @EnvironmentObject var appModel: AppModel
    @Binding var displayAR: Bool
    @Binding var onMission: Bool
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    if appModel.missionsIdx == nil {
                        Text("无任务")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }else{
                        Text("当前任务")
                            .font(.title)
                            .foregroundColor(.white)
                            .opacity(0.6)
                            .padding(.bottom)
                        Text(appModel.currentMission.name)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                Toggle(isOn: $displayAR) {
                    Text("AR显示")
                        .foregroundColor(.white)
                        .opacity(0.6)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                }
            }.padding()
            Spacer()
            Button(action:{
                onMission = true
            }) {
                if appModel.isOnMissionPlace {
                    Text("已到任务点，点击开始任务")
                }
            }
            Spacer()
        }
    }
}
