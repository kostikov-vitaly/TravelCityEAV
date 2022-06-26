//
//  SuccessView.swift
//  Travel City EAV
//
//  Created by Vitaly on 26/06/22.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack {
            Background(color: Color("BG"))
            VStack(alignment: .center, spacing: 32) {
                Image("ok")
                    .resizable()
                    .frame(width: 144, height: 144, alignment: .center)
                VStack(spacing: 12) {
                    HeaderSecond(title: "Your ticket is ready")
                    Content(text: "A copy of the tickets was sent to the email address you provided.")
                        .multilineTextAlignment(.center)
                }
                .foregroundColor(Color("Black"))
            }
            .padding(.top, -140)
            .padding(.horizontal, 36)
        }
        .overlay {
            ZStack(alignment: .bottom) {
                VStack(alignment: .center, spacing: 0) {
                    Spacer()
                    
                    NavigationLink(destination: {
                        InteractiveView()
                    }, label: {
                        ButtonView(text: "Jump to the trip", type: .fill)
                    })
            
                    Button(action: {
                        //
                    }) {
                        ButtonView(text: "Download a complete app", type: .flat)
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 4)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
