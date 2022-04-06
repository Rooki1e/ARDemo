//
//  MissionContent.swift
//  ARDemo
//
//  Created by rick on 2022/4/4.
//

import SwiftUI

struct MissionCard: View {
    
    @EnvironmentObject var appModel: AppModel
    
    let name: String
    let location: String
    let distance: Float
    let detail: String
    let idx: Int
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(name)
                    .font(.largeTitle)
                Text(detail)
                    .font(.title2)
                HStack {
                    Image(systemName: "location")
                        .font(.subheadline)
                    Text(location)
                        .font(.subheadline)
                    Text(String(distance))
                        .font(.body)
                    Text("m")
                        .font(.body)
                }
                .padding(.top)
            }
            .padding()
            Spacer()
            if(idx == appModel.missionsIdx){
                Image(systemName: "checkmark.circle.fill")
            }else{
                Image(systemName: "checkmark.circle")
            }
        }
        .padding()
    }
}

struct MissionContent_Previews: PreviewProvider {
    static var previews: some View {
        MissionCard(name:"eeeeeee",location: "海峡两岸青年林", distance: 0.1, detail: "abcdgserkogwergraffd",idx: 0)
            .environmentObject(AppModel())
    }
}
