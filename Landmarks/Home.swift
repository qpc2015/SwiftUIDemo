//
//  Home.swift
//  Landmarks
//
//  Created by PengCheng Qin on 2020/8/25.
//  Copyright © 2020 PengCheng Qin. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String : [Landmark]] {
        Dictionary(
            grouping: landmarkData, by: { $0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted(), id: \.self) {
                    key in
                    Text(key)
                }
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
