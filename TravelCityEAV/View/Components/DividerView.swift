//
//  DividerView.swift
//  Travel City EAV
//
//  Created by Vitaly on 26/06/22.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .fill(Color("LightBG"))
            .frame(height: 1)
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
