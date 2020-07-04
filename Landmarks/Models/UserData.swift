//
//  UserData.swift
//  Landmarks
//
//  Created by Luca Argenziano on 03/07/2020.
//  Copyright © 2020 Luca Argenziano. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
