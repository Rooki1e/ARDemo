//
//  SelfView.swift
//  ARDemo
//
//  Created by rick on 2022/3/30.
//

import SwiftUI
import RealityKit

struct SelfView: View {
    
    @EnvironmentObject var appModel: AppModel
    
    var body: some View {
        VStack {
            ScrollView {
                let user = appModel.user
                Image(user.avatarResource).clipShape(Circle())
                Text(user.name).font(.largeTitle)
                Divider()
                InfoCard(
                    title: "位置",
                    icon: Image(systemName: "location"),
                    context: user.location
                )
                Divider()
                InfoCard(
                    title: "心情",
                    icon: Image(systemName: "airplane"),
                    context: user.mood
                )
                Divider()
                InfoCard(
                    title: "想遇见",
                    icon: nil,
                    context: user.wantToMeet
                )
                Divider()
                InfoCard(
                    title: "兴趣",
                    icon: nil,
                    context: user.habit
                )
            }
        }
    }
}

struct SelfView_Previews: PreviewProvider {
    static var previews: some View {
        SelfView().environmentObject(AppModel())
    }
}
