//
//  FlashcardFinalView.swift
//  Stupa
//
//  Created by Stiven on 13/04/23.
//

import SwiftUI

struct FlashcardFinalView: View {
    var body: some View {
        ZStack {
            Color(red: 0.9, green: 0.9, blue: 0.8, opacity: 1.00).edgesIgnoringSafeArea(.all)
            VStack (alignment : .center) {
                Spacer()
                Text("Great Job 🥳")
                    .font(.system(size:45))
                    .fontWeight(.bold)
                    .padding(.bottom, 50)
                Text("With knowledge, the consciousness of all beings \n can be awakened\n -Buddha")
                    .font(.system(size: 25))
                    .padding(.horizontal, 30)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 60)
                Image("buddha")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 400, maxHeight: 400, alignment: .center)
                    .padding(.bottom, 30)
                
                NavigationLink(destination: MainView()) {
                    Text("Back to Home")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width:400, height: 80)
                        .background(Color.accentColor)
                        .cornerRadius(20)
                        .padding(.top, 100)
                        .padding(.bottom,5)
                }
                Spacer()
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct FlashcardFinalView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardFinalView()
    }
}

