//
//  MapSiteView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 27/9/24.
//

import SwiftUI
import MapKit

struct MapSiteView: View {
    let ucsgUp = CLLocationCoordinate2D(latitude: -2.180027, longitude: -79.910659)
    let ucsgDown = CLLocationCoordinate2D(latitude: -2.183020, longitude: -79.902629)
    
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            ZStack {
                Color("BackgroundApp")
                VStack {
                    Map() {
                        Marker("", coordinate: ucsgUp)
                        Marker("", coordinate: ucsgDown)
                    }.tint(Color("BackGround"))
                }
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }
    }
}

#Preview {
    MapSiteView()
}
