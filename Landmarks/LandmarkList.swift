//
//  LandmarkList.swift
//  Landmarks
//
//  Created by PengCheng Qin on 2020/8/19.
//  Copyright © 2020 PengCheng Qin. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    //加了@State注解的变量，视图通过监视和读取该变量来重新渲染UI。
    //其状态是由SwiftUI来存储管理的，作为视图渲染的单一可信来源。
//    @State var showFavoritesOnly = false
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .environmentObject(UserData())
        
    }
}
