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
                CardView(title: "位置") {
                    InfoContent(
                        icon: Image(systemName: "location"),
                        context: user.location
                    )
                }
                Divider()
                CardView(title: "心情") {
                    InfoContent(
                        icon: Image(systemName: "airplane"), context: user.mood
                    )
                }
                Divider()
                CardView(title: "想遇见") {
                    InfoContent(icon: nil,context: user.wantToMeet)
                }
                Divider()
                CardView(title: "兴趣") {
                    InfoContent(icon: nil, context: user.habit)
                }
            }
        }
    }
}

struct SelfView_Previews: PreviewProvider {
    static var previews: some View {
        SelfView().environmentObject(AppModel())
    }
}
