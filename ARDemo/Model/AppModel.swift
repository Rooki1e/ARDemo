//
//  AppModel.swift
//  ARDemo
//
//  Created by rick on 2022/4/3.
//

import Foundation
import Combine
import MapKit

class AppModel: ObservableObject {
    var currentMission: MissionModel {
        get {
            let idx = missionsIdx != nil ? missionsIdx : 0
            return missions[idx!]
        }
    }
    @Published var missionsIdx: Int? = nil
    @Published var user: UserModel = UserModel(name: "李尔弥", location: "长沙", mood: "飞行中", habit: "吃饭", avatarResource: "avatar", wantToMeet: "一起疯的好伙伴")
    @Published var missions = [
        MissionModel(name: "认识第一个朋友",detail: "春天的樱花是新故事的起点", location: CLLocationCoordinate2D(latitude: 28.14905, longitude: 112.93986), locationLabel: "两岸青年林", distance: nil),
        MissionModel(name: "索道上的约会",detail: "没有落脚点的索道有点吓人", location: CLLocationCoordinate2D(latitude: 28.19407, longitude: 112.94752), locationLabel: "岳麓山", distance: nil),
    ]
    @Published var isARDisplay: Bool = true
    func update(missionsIdx:Int)->Void{
        if(self.missionsIdx == missionsIdx){
            self.missionsIdx = nil
            return
        }
        self.missionsIdx = missionsIdx
    }
    func setARDisplay(_ value:Bool){
        isARDisplay = value
    }
    var isOnMissionPlace: Bool {
        return missionsIdx != nil
    }
}
