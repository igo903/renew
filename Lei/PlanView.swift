//
//  PlanView.swift
//  Lei
//
//  Created by Star Jiang on 2024/7/14.
//

import SwiftUI

struct PlanView: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            Image("Plan_Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
                .cornerRadius(20)
            
            Image("Plan_Stars")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 127, height: 52)
                .padding(10)
                
            VStack{
                Text("Melody Mood Plan")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Reshape calmly mood")
                    .font(.subheadline)
                    .foregroundColor(.white)
                
                Button(action: {
                    // 添加按钮点击后的操作
                }){
                    Text("1 DAY OF 21 FINISHED")
                        .foregroundColor(.white)
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding(.vertical, 12.0)
                        .padding(.horizontal, 24.0)
                        .background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.2))
                        .cornerRadius(20)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding()
        }
    }
}

#Preview {
    PlanView()
}
