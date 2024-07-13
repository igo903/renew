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
                HStack {
                    Text("MidNight Now ...")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 1.001, green: 0.904, blue: 0.747))
                        .padding(.bottom, 12.0)
                        .padding(.top, 76)
                    
                    Spacer()
                }
                
                Text("Time is like rain, we are all people walking in the rain, find their own umbrella, build a small world, go until the wind stops raining, beautiful days.")
                    .foregroundColor(Color(red: 190.0/255, green: 218.0/255, blue: 255.0/255))
                    .padding()
                    .background(LinearGradient(
                        gradient: Gradient(
                            colors: [
                                Color(red: 78.0/255, green: 149.0/255, blue: 255.0/255, opacity: 0.10),
                                Color(red: 149.0/255, green: 72.0/255, blue: 248.0/255, opacity: 0.30)
                            ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                        .blur(radius: 8))
                    .cornerRadius(16)
                
                HStack {
                    Text("Novice Album")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                
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
