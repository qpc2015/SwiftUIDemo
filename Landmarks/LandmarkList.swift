//
//  LandmarkList.swift
//  Landmarks
//
//  Created by PengCheng Qin on 2020/8/19.
//  Copyright © 2020 PengCheng Qin. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}
