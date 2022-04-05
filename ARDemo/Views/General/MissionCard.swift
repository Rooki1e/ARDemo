//
//  MissionContent.swift
//  ARDemo
//
//  Created by rick on 2022/4/4.
//

import SwiftUI

struct MissionCard: View {
    var name: String
    var location: String
    var distance: Float
    var detail: String
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
        }
    }
}

struct MissionContent_Previews: PreviewProvider {
    static var previews: some View {
        MissionCard(name:"eeeeeee",location: "海峡两岸青年林", distance: 0.1, detail: "abcdgserkogwergraffd")
    }
}
