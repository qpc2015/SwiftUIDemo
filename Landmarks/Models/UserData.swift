//
//  UserData.swift
//  Landmarks
//
//  Created by PengCheng Qin on 2020/8/20.
//  Copyright © 2020 PengCheng Qin. All rights reserved.
//

import SwiftUI
import Combine


final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
