//
//  ExtensionView.swift
//  OnbordingSlider
//
//  Created by Mauro de Oliveira André on 01/11/2023.
//

import SwiftUI


extension OnBoardScreen{
    func slider() -> some View{
        ZStack{
            Capsule()
                .foregroundStyle(.black)
                .opacity(0.1)
            
            Text("Start")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.leading, 30)
            
            HStack{
                Capsule()
                    .foregroundStyle(yellowColor)
                    .frame(width: calculateWidth() + 70)
                
                Spacer()
            }
            
            HStack{
                ZStack{
                    Image(systemName: "chevron.right")
                    Image(systemName: "chevron.right")
                        .offset(x: -10)
                }
                .foregroundStyle(.black)
                .offset(x: 5)
                .frame(width: 65, height: 65)
                .background(yellowColor.gradient)
                .clipShape(Circle())
                .offset(x: offset)
                .gesture(DragGesture()
                    .onChanged(onChanged)
                    .onEnded(onEnd)
                )
                Spacer()
            }
         }
        .frame(width: width, height: 70)
        .padding(.bottom)
    }
}


