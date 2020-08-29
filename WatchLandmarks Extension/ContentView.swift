//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Luca Argenziano on 21/07/2020.
//  Copyright © 2020 Luca Argenziano. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }.environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }.environmentObject(UserData())
    }
}
