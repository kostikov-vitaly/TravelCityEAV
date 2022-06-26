//
//  ContentView.swift
//  TravelCityEAV
//
//  Created by Vitaly on 25/06/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            
            ZStack(alignment: .top) {
                
                Background(color: Color("BG"))
        
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HeaderMain(title: "Where’re you going?")
                            .foregroundColor(Color("Black"))
                            .padding(.bottom, 36)
                        SearchBar(placeholder: "Destination")
                        StationList(stations: Station.destinations)
                    }
                    .padding(.top, 40)
                }
                .padding(.horizontal, 16)
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
