//
//  MainView.swift
//  Stupa
//
//  Created by Stiven on 13/04/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                ZStack {
                    Color(red: 0.9, green: 0.9, blue: 0.8, opacity: 1.0).edgesIgnoringSafeArea(.all)
                    VStack {
                        Text("Learning about Buddhist temples \noutside of Java island")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 50)
                        
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 450, maxHeight: 450, alignment: .center)
                            .padding(.bottom, 80)
                        NavigationLink(destination: FlashcardView()) {
                            Text("Temple Card")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .frame(width:400, height: 80)
                                .background(Color.accentColor)
                                .cornerRadius(20)
                                .padding(.bottom,15)
                        }
                        NavigationLink(destination: GameIntroView()) {
                            Text("Game")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .frame(width:400, height: 80)
                                .background(Color.accentColor)
                                .cornerRadius(20)
                                .padding(.bottom,5)
                        }
                    }
                }
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
        } else {
            // Fallback on earlier versions
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
