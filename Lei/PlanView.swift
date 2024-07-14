//
//  PlanView.swift
//  Lei
//
//  Created by Xinxing Jiang on 2024/7/14.
//

import SwiftUI

struct PlanView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .frame(width: .infinity, height: 200)
                .overlay(
                    ZStack{
                        Image("Plan_Background")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        
                        
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
                            }) {
                                Text("1 DAY OF 21 FINISHED")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding()
                                    .background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.2))
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal, 20)
                        }
                        .padding()
                    }
                )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    PlanView()
}
