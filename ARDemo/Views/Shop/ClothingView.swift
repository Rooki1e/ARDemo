//
//  ClothingView.swift
//  realMeet1
//
//  Created by y on 2022/3/26.
//

import SwiftUI

struct ClothingView: View {
    
    var clothingData : ClothingModel
    var animation : Namespace.ID
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            ZStack{
                
                Image(clothingData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .matchedGeometryEffect(id: clothingData.image, in: animation)
            }
            
            Text(clothingData.title)
                .fontWeight(.heavy)
                .foregroundColor(.gray)
            
            Text(clothingData.price)
                .fontWeight(.heavy)
                .foregroundColor(.black)
        }
        
    }
}

