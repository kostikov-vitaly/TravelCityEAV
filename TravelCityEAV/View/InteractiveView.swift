//
//  InteractiveView.swift
//  Travel City EAV
//
//  Created by Vitaly on 26/06/22.
//

import SwiftUI
import AVFoundation

struct InteractiveView: View {
    
    @State private var musicState = false
    @State var audioPlayer: AVAudioPlayer!
    @State private var selection = 0
    
    let images: [String] = ["Campi1", "Campi2", "Campi3", "Campi4", "Campi5"]
    
    var body: some View {
        ZStack(alignment: .top) {
            Background(color: Color("BG"))
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 32) {
                    
                    TabView(selection : $selection) {
                        ForEach(0..<5) { i in
                            ZStack(alignment: .center) {
                                Image("\(images[i])")
                                    .resizable()
                                    .scaledToFill()
                                Color.black.opacity(0.2)
                            }
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .frame(height: 300)
                    
                    VStack(alignment: .leading, spacing: 40) {
                        VStack(alignment: .leading, spacing: 16) {
                            HeaderMain(title: "Campi Flegrei")
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(.white)
                                        .frame(width: 160)
                                    HStack(spacing: 4) {
                                        Image(systemName: "chevron.left.2")
                                            .font(.system(size: 12, weight: .medium))
                                        Text("Piazza Leopardi")
                                            .font(.custom("GT Walsheim Pro", size: 15))
                                            .fontWeight(.medium)
                                    }
                                    .padding(.horizontal, 16)
                                }
                                .frame(height: 36)
                            }
                            .padding(.bottom, 4)
                            Content(text: "You don’t need to walk through a gallery to find the best art in Naples, much of it is found on the streets. Graffiti artists love this city and see its walls as a blank canvas ready for their distinct style of art.")
                        }
                        .foregroundColor(Color("Black"))
                        
                        VStack(alignment: .leading, spacing: 14) {
                            HeaderSecond(title: "On this station")
                            HStack(alignment: .top, spacing: 16) {
                                Image("Campi3")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .scaledToFill()
                                    .cornerRadius(6)
                                VStack(alignment: .leading, spacing: 4) {
                                    SmallContent(text: "Diego Maradona Stadium")
                                        .foregroundColor(Color("Black"))
                                    SmallContent(text: "Entertaiment")
                                        .foregroundColor(Color("Input"))
                                }
                                Spacer()
                                SmallContent(text: "300 m")
                                    .foregroundColor(Color("Input"))
                                
                            }
                            
                            DividerView()
                            
                            HStack(alignment: .top, spacing: 16) {
                                Image("Campi5")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .scaledToFill()
                                    .cornerRadius(6)
                                VStack(alignment: .leading, spacing: 4) {
                                    SmallContent(text: "Mostra d'Oltremare")
                                        .foregroundColor(Color("Black"))
                                    SmallContent(text: "City park")
                                        .foregroundColor(Color("Input"))
                                }
                                Spacer()
                                SmallContent(text: "245 m")
                                    .foregroundColor(Color("Input"))
                                
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
            .overlay {
                ZStack(alignment: .bottom) {
                    VStack(alignment: .center, spacing: 0) {
                        Spacer()
                        
                        Button(action: {
                            
                            if !musicState {
                                self.audioPlayer.play()
                            } else {
                                self.audioPlayer.pause()
                            }
                            
                            self.musicState.toggle()
                        }) {
                            musicState ? ButtonView(icon: "speaker.slash.fill", text: "Turn off sounds", type: .fill) : ButtonView(icon: "speaker.wave.2.fill", text: "Turn on sounds", type: .fill)
                        }
                        .animation(.easeInOut(duration: 0.2), value: musicState)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 40)
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: "sound", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            self.audioPlayer.volume = 0.2
            self.audioPlayer.prepareToPlay()
        }
        .ignoresSafeArea()
        .statusBar(hidden: true)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct InteractiveView_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveView()
    }
}
