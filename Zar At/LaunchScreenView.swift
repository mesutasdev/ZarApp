//
//  LaunchScreenView.swift
//  Zar At
//
//  Created by Artı Studio on 19.07.2024.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                Image("zarLogo")
                    .resizable()
                    .frame(width: 200, height: 200)
                VStack{
                    Text("Hoş Geldiniz")
                        .padding()
                    Text("Zarlar Yeniden Atılıyor")
                }
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .font(.title)
            }
           
        }
    }
}

#Preview {
    LaunchScreenView()
}
