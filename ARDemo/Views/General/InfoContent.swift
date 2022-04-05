//
//  InfoContent.swift
//  ARDemo
//
//  Created by rick on 2022/4/4.
//

import SwiftUI

struct InfoContent: View {
    var icon:Image?
    var context:String
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                icon
                Text(context)
            }
            .padding()
            Spacer()
        }
    }
}

struct InfoContent_Previews: PreviewProvider {
    static var previews: some View {
        InfoContent(icon: Image(systemName: "person"), context: "fuck")
    }
}
