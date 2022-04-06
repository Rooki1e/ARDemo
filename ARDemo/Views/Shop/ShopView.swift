//
//  ShopView.swift
//  ARDemo
//
//  Created by rick on 2022/3/30.
//

import SwiftUI

struct ShopView: View {
    @State var selectedTab = scroll_Tabs[0]
    @Namespace var animation
    @State var show = false
    @State var selectedClothing : ClothingModel?
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                ZStack{
                    HStack(spacing: 15){

                        Button(action: {}, label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title)
                                .foregroundColor(.black)
                        })
                        
                        Spacer(minLength: 0)
                        
                        
                        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                            
                            Button(action: {}, label: {
                                Image(systemName: "cart")
                                    .font(.title)
                                    .foregroundColor(.black)
                            })
                            
                            Circle()
                                .fill(Color.red)
                                .frame(width: 15, height: 15)
                                .offset(x:5, y:-10.0)
                            
                        })
                            
                    }
                    
                    Text("Shop")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding()
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack{
                    HStack{
                        Text("Clothing")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    .padding(.bottom,10)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        HStack(spacing: 15){
                            ForEach(scroll_Tabs,id: \.self){
                                tab in
                                //Tab Button...
                                
                                TabButton(title: tab, selectedTab: $selectedTab, animation: animation)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top,10)
                    })
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing:15),count:2),spacing: 15){
                        ForEach(Clothing){
                            index in
                            
                            ClothingView(clothingData: index, animation: animation)
                                .onTapGesture{
                                    withAnimation(.easeIn){
                                        selectedClothing = index
                                        show.toggle()
                                    }
                                }
                        }
                        .padding()
                        .padding(.top,10)
                    }
                }
            })
            }
                .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
            
            if _selectedClothing != nil && show{
                DetailView(clothingData: $selectedClothing, show: $show,animation: animation)
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
