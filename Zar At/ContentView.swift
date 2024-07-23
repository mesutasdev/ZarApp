//
//  ContentView.swift
//  Zar At
//
//  Created by Mesut As Developer on 19.07.2024.
//

import SwiftUI

struct ContentView: View {
     
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1

    var body: some View {
        ZStack (alignment: .center) {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack (alignment:.center, spacing:35){
                Image("zarLogo")
                    .resizable()
                    .frame(width: 200, height: 200)
                    
                Text("Kumarı Her Zaman Oynatan Kazanır")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
               
                
                            HStack{
                                
                                ZarView(n: leftDiceNumber)
                                ZarView(n: rightDiceNumber)
                                
                            }
                
                .padding(55)
      
                Button(action: {
             
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                    
                
                }){
                    Text("ZAR AT")
                        .padding()
                        .frame(width: 250, height: 50)
                        .background(Color(.blue))
                        .foregroundColor(.white)
                        .cornerRadius(9.0)
                }
                Spacer()
        
            }
        }
       
    }

}

struct ZarView: View {
    
    let n: Int
    
    var body: some View {
        Image("zar\(n)")
            .resizable()
            .frame(width: 140, height: 140)
            .padding()
    }
}

#Preview {
    ContentView()
}
