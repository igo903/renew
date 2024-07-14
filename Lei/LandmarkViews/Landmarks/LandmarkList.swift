//
//  LandmarkList.swift
//  Lei
//
//  Created by Star Jiang on 2024/7/9.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
        
//        // without Identifiable protocol in Landmark.swift
//        List(landmarks, id: \.id) {landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
//        // with Identifiable protocol in Landmark.swift
//        List(filteredLandmarks) {landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) {landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
