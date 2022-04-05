//
//  ContentView.swift
//  ARDemo
//
//  Created by rick on 2022/3/30.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    
    @StateObject var appModel: AppModel = AppModel()
    
    var body: some View {
        return TabView {
            HomeView().tabItem {
                NavigationLink(destination: HomeView()){
                    Image(systemName: "play")
                    Text("首页")
                }
            }
            MissionView().tabItem {
                NavigationLink(destination: MissionView()) {
                    Image(systemName: "bolt.horizontal")
                    Text("任务")
                }
            }
            ShopView().tabItem {
                NavigationLink(destination: ShopView()){
                    Image(systemName: "cart")
                    Text("商店")
                }
            }
            SelfView().tabItem {
                NavigationLink(destination:SelfView()){
                    Image(systemName: "person")
                    Text("我")
                }
            }
        }.environmentObject(appModel)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
