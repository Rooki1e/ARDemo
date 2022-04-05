//
//  CardView.swift
//  ARDemo
//
//  Created by rick on 2022/4/3.
//

import SwiftUI

struct CardView<Content: View>: View{
    var title:String
    @ViewBuilder var content: Content
    
    var body: some View {
        VStack {
            HStack {
                Text(title).font(.title)
                Spacer()
            }
            content
        }
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "心情") {
            HStack {
                VStack(alignment: .leading) {
                    Image(systemName: "airplane")
                    Text("fuck you")
                }
                .padding()
                Spacer()
            }
        }
    }
}
