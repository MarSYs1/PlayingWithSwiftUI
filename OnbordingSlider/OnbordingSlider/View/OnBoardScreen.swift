//
//  OnBoardScreen.swift
//  OnbordingSlider
//
//  Created by Mauro de Oliveira André on 01/11/2023.
//

import SwiftUI

struct OnBoardScreen: View {
    var body: some View {
        ZStack{
            
            
            LinearGradient(gradient: Gradient(colors: [yellowColor, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
           
          
            
            VStack{
               Text("Comprar rápido")
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.black.gradient)
                
                
                Text("Comprar o imovel que voce deseja nunca foi tao facil assim, aqui o serviço é otimizado pensado em você")
                    .font(.footnote)
                    .padding()
                    .padding(.bottom)
                    .multilineTextAlignment(.center)
                
                
                Image(logoImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                
               Spacer(minLength: 0)
                
            }
        }
    }
}

#Preview {
    OnBoardScreen()
}
