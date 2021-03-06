//
//  HomeView.swift
//  ARDemo
//
//  Created by rick on 2022/3/30.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var appModel: AppModel
    @State var displayAR: Bool = true
    
    var body: some View {
        ZStack(alignment: .top) {
            ARViewContainer(displayAR: $displayAR)
                .edgesIgnoringSafeArea([.top])
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
                Button(action:{}) {
                    if appModel.isOnMissionPlace {
                    Text("已到任务点，点击开始任务")
                    }
                }
                Spacer()
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let model = AppModel()
        model.missionsIdx = 1;
        return Group {
            HomeView().environmentObject(model)
        }
    }
}
