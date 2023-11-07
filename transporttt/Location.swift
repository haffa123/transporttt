//
//  Location.swift
//  transporttt
//
//  Created by haffa dhifi on 5/11/2023.
//

import SwiftUI

struct Location: View {
    var body: some View {
        ZStack(alignment: .top) {
            EcoVenturaMapRes()
            LocationSearchActivatingView()
                .padding(.top, 50)
            MapViewActionButton()
        }
    }
}
struct Location_Previews: PreviewProvider {
    static var previews: some View {
        TrackYourRide()
    }
}
