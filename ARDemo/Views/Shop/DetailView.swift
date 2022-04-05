//
//  DetailView.swift
//  realMeet1
//
//  Created by y on 2022/3/26.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var clothingData : ClothingModel!
    @Binding var show: Bool
    var animation: Namespace.ID
    //Initialization
    @State var selectedColor = Color.red
    
    @State var count = 0
    
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    
    var body: some View {
        VStack{
            HStack{
                
                VStack(alignment: .leading, spacing: 5){
                    Button(action: {
                        withAnimation(.easeOut){show.toggle()}
                    }){
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    
                    Text("详情页面")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top)
                    
                    Text(clothingData.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}){
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
            .padding()
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HStack{
                
                VStack(alignment: .leading, spacing: 6){
                    Text("Price")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Text(clothingData.price)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                
                Image(clothingData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //hero Animation...
                    .matchedGeometryEffect(id: clothingData.image, in: animation)
            }
            .padding()
            .padding(.top,10)
            .zIndex(1)
            
            VStack{
                ScrollView(isSmallDevice ? .vertical : .init(), showsIndicators: false){
                    HStack{
                        VStack(alignment: .leading, spacing: 8){
                            Text("Color")
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 15){
                                ColorButton(color: Color(clothingData.image), selectedColor: $selectedColor)
                                ColorButton(color: Color.yellow, selectedColor: $selectedColor)
                                ColorButton(color: Color.green, selectedColor: $selectedColor)
                            }
                        }
                        
                        Spacer(minLength: 0)

                        
                        VStack(alignment: .leading, spacing: 8){
                            Text("Size")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                            Text("L")
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top,isSmallDevice ? 0 : -20)
                    
                    Text("详情介绍")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                    HStack(spacing:20){
                        Button(action:{
                            if count > 0 {count -= 1}
                        }){
                            Image(systemName: "minus")
                                .font(.title2)
                                .foregroundColor(.gray)
                                .frame(width: 35, height: 35)
                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth:1))
                        }
                        
                        Text("\(count)")
                            .font(.title2)
                        
                        Button(action:{
                            count += 1
                        }){
                            Image(systemName: "plus")
                                .font(.title2)
                                .foregroundColor(.gray)
                                .frame(width: 35, height: 35)
                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth:1))
                        }
                        
                        Spacer()
                        
                        Button(action: {}){
                            Image(systemName: "suit.heart.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color.red)
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer(minLength: 0)
                
                    Button(action: {}){
                        Text("BUY NOW")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .background(Color.black)
                            .clipShape(Capsule())
                    }
                    .padding(.top)
                    .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15:0)
                }
            }
            .background(
                Color.white
                    .clipShape(CustomCorner())
                    .padding(.top,isSmallDevice ? -60 : -100)
            )
            .zIndex(0)
            
        }
        .background(Color(clothingData.image).ignoresSafeArea(.all,edges: .top))
        .background(Color.white.ignoresSafeArea(.all,edges: .bottom))
        .onAppear{
            //First Color is image or clothing color
            selectedColor = Color(clothingData.image)
        }
    }
}
