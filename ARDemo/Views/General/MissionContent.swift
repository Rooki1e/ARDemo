//
//  MissionContent.swift
//  ARDemo
//
//  Created by rick on 2022/4/4.
//

import SwiftUI

struct MissionContent: View {
    var location: String
    var distance: Float
    var detail: String
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(detail)
                HStack {
                    Image(systemName: "location")
                    Text(location).font(.body)
                    Text(String(distance)).font(.body)
                    Text("m").font(.body)
                }
                
            }
            .padding()
            Spacer()
        }
    }
}

struct MissionContent_Previews: PreviewProvider {
    static var previews: some View {
        MissionContent(location: "海峡两岸青年林", distance: 0.1, detail: "abcdgserkogwergraffd")
    }
}
