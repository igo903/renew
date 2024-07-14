//
//  LandmarkHome.swift
//  Lei
//
//  Created by Star Jiang on 2024/7/13.
//

import SwiftUI

struct LandmarkHome: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    LandmarkHome()
        .environment(ModelData())
}
