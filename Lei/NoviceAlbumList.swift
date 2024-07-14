//
//  NoviceAlbumList.swift
//  Lei
//
//  Created by Star Jiang on 2024/7/14.
//

import SwiftUI

struct NoviceAlbumList: View {
    let items: [NoviceItem] = [
        NoviceItem(id: 1, title: "Fast Sleep", description: "total time 13:06", imageName: "NoviceAlbum_1"),
        NoviceItem(id: 2, title: "Meditation", description: "total time 23:06", imageName: "NoviceAlbum_2")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(items){ item in
                    VStack{
                        item.image
                            .resizable()
                            .frame(width: 220, height: 220)
                            .cornerRadius(16)
                        
                        Text(item.title)
                            .foregroundColor(.white)
                            .frame(width: 220, alignment: .leading)
                        
                        Text(item.description)
                            .font(.caption)
                            .foregroundColor(Color(red: 0.483, green: 0.34, blue: 0.894))
                            .frame(width: 220, alignment: .leading)
                    }
                }
            }
        }
    }
}

struct NoviceItem: Hashable, Identifiable {
    var id: Int
    
    let title: String
    let description: String
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
}

#Preview {
    NoviceAlbumList()
}
