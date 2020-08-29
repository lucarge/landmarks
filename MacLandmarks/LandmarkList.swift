//
//  LandmarkList.swift
//  MacLandmarks
//
//  Created by Luca Argenziano on 02/09/2020.
//  Copyright © 2020 Luca Argenziano. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    @Binding var selectLandmark: Landmark?
    @Binding var filter: FilterType

    var body: some View {
        List(selection: $selectLandmark) {
            ForEach(userData.landmarks) { landmark in
                if (!self.userData.showFavoritesOnly || landmark.isFavorite && self.filter == .all
                || self.filter.category == landmark.category
                || (self.filter.category == .featured && landmark.isFeatured)) {
                    LandmarkRow(landmark: landmark).tag(landmark)
                }
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(
            selectLandmark: .constant(landmarkData[0]),
            filter: .constant(.all)
        ).environmentObject(UserData())
    }
}
