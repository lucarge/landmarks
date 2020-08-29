//
//  NavigationPrimary.swift
//  MacLandmarks
//
//  Created by Luca Argenziano on 02/09/2020.
//  Copyright © 2020 Luca Argenziano. All rights reserved.
//

import SwiftUI

struct NavigationPrimary: View {
    @Binding var selectedLandmark: Landmark?
    @State private var filter: FilterType = .all

    var body: some View {
        VStack {
            Filter(filter: $filter)
                .controlSize(.small)
                .padding([.top, .leading], 8)
                .padding(.trailing, 4)
            
            LandmarkList(
                selectLandmark: $selectedLandmark,
                filter: $filter
            ).listStyle(SidebarListStyle())
        }
        .frame(minWidth: 255, maxWidth: 300)
    }
}

struct NavigationPrimary_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPrimary(selectedLandmark: .constant(landmarkData[1])).environmentObject(UserData())
    }
}
