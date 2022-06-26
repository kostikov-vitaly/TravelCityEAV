//
//  HeaderSecond.swift
//  Travel City EAV
//
//  Created by Vitaly on 26/06/22.
//

import SwiftUI

struct HeaderSecond: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.custom("GT Walsheim Pro", size: 24))
            .fontWeight(.medium)
    }
}

struct HeaderSecond_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSecond(title: "123")
    }
}
