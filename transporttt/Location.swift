//
//  Location.swift
//  transporttt
//
//  Created by haffa dhifi on 5/11/2023.
//

import SwiftUI

struct Location: View {
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            EcoVenturaMapRes()
                .ignoresSafeArea()
            
            if showLocationSearchView{
                LocationSearchView(showLocationSearchView: $showLocationSearchView)
            } else {
                LocationSearchActivatingView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation(.spring()){
                            showLocationSearchView.toggle()
                        }
                    }
            }
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
        }.navigationBarBackButtonHidden(true)
    }
}
struct Location_Previews: PreviewProvider {
    static var previews: some View {
        TrackYourRide()
    }
}
