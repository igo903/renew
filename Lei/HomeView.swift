//
//  HomeView.swift
//  Lei
//
//  Created by Xinxing Jiang on 2024/7/7.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack{
            Color(red: 44.0/255, green: 22.0/255, blue: 91.0/255)
            
            // back layer, Moon
            VStack{
                HStack {
                    Spacer()
                    
                    Image("Moon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 85, height: 85)
                        .padding(.top, 76)
                        .padding(.trailing, 48)
                }
                
                Spacer()
            }
            
            // front layer, text
            VStack {
                HelloView()
                
                HStack {
                    Text("Novice Album")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding(.top, 28)
                
                NoviceAlbumList()
                
                HStack {
                    Text("Mood Lib")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding(.top, 28)
                
                MoodLibList()
                
                PlanView()
                    .padding(.top, 28)
                
                Spacer()
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    HomeView()
}
