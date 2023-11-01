//
//  OnBoardScreen.swift
//  OnbordingSlider
//
//  Created by Mauro de Oliveira André on 01/11/2023.
//

import SwiftUI

struct OnBoardScreen: View {
    
    @State var width = UIScreen.main.bounds.width - 100
    @State var offset: CGFloat = 0
    
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
                
               Spacer()
                
                slider()
               
            }
        }
    }
    
    
    func calculateWidth() -> CGFloat{
        let percent = offset / width
        
        return percent * width
    }
    
    func onChanged(value: DragGesture.Value){
        if value.translation.width > 0 && offset <= width - 65{
            offset = value.translation.width
        }
    }
    
    func onEnd(value: DragGesture.Value){
        withAnimation(Animation.easeOut(duration: 0.3)){
            if offset > 180{
                offset = width - 65
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35){
                    NotificationCenter.default.post(name: Notification.Name("sucess"), object: nil)
                }
                
            }else{
                offset = 0
            }
        }
    }

}

#Preview {
    OnBoardScreen()
}




