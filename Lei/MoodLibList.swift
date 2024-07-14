//
//  MoodLibList.swift
//  Lei
//
//  Created by Xinxing Jiang on 2024/7/14.
//

import SwiftUI

struct MoodLibList: View {
    let items: [MoodItem] = [
        MoodItem(id: 1, title: "Majestic", description: "1.1w播放", imageName: "Mood_Majestic"),
        MoodItem(id: 2, title: "Valley", description: "1.1w播放", imageName: "Mood_Valley"),
        MoodItem(id: 3, title: "Stream", description: "1.1w播放", imageName: "Mood_Stream"),
        MoodItem(id: 4, title: "Thought", description: "1.1w播放", imageName: "Mood_Thought"),
        MoodItem(id: 5, title: "Starry", description: "1.1w播放", imageName: "Mood_Starry"),
        MoodItem(id: 6, title: "Acceptance", description: "1.1w播放", imageName: "Mood_Acceptance"),
        MoodItem(id: 7, title: "Snowy", description: "1.1w播放", imageName: "Mood_Snowy"),
        MoodItem(id: 8, title: "Renaissance", description: "1.1w播放", imageName: "Mood_Renaissance")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [
                GridItem(.fixed(80), spacing: 12),
                GridItem(.fixed(80), spacing: 12),
            ], spacing: 12) {
                ForEach(items) { item in
                    VStack{
                        item.image
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text(item.title)
                            .font(.subheadline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                        
                        Text(item.description)
                            .font(.caption2)
                            .foregroundColor(.white)
                            .opacity(0.4)
                    }
                    .frame(width: 120, height: 80)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(red: 78 / 255.0, green: 149 / 255.0, blue: 255 / 255.0), Color(red: 149 / 255.0, green: 72 / 255.0, blue: 248 / 255.0)]), startPoint: .top, endPoint: .bottom)
                    )
                    .cornerRadius(16)
                }
            }
        }
    }
}

struct MoodItem: Hashable, Identifiable {
    var id: Int
    
    let title: String
    let description: String
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
}

#Preview {
    MoodLibList()
}
