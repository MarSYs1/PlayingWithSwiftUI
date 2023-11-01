//
//  ContentView.swift
//  OnbordingSlider
//
//  Created by Mauro de Oliveira André on 01/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State var goToHome = false
    var body: some View {
        ZStack {
            if goToHome{
                Text("Hello")
            }else{
                OnBoardScreen()
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: Notification.Name("sucess")), perform: { _ in
            withAnimation {
                goToHome.toggle()
            }
        })
    }
}

#Preview {
    ContentView()
}
