//
//  InfoContent.swift
//  ARDemo
//
//  Created by rick on 2022/4/4.
//

import SwiftUI

struct InfoCard: View {
    var title:String
    var icon:Image?
    var context:String
    var body: some View {
        HStack {
            Text(title).font(.title)
            Spacer()
            icon
            Text(context)
        }.padding()
    }
}

struct InfoContent_Previews: PreviewProvider {
    static var previews: some View {
        InfoCard(title: "hehe", icon: Image(systemName: "person"), context: "fuck")
    }
}
