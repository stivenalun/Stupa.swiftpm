//
//  GameResultView.swift
//  Stupa
//
//  Created by Stiven on 17/04/23.
//

import SwiftUI

struct GameResultView: View {
    
    var body: some View {
        ZStack {
            Color(red: 0.9, green: 0.9, blue: 0.8, opacity: 1.00).edgesIgnoringSafeArea(.all)
            
            VStack (alignment : .center){
                Text("  Congratulations 🥳")
                    .font(.system(size:55))
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                
                Text("You have successfully\ncompleted the game!")
                    .font(.system(size:30))
                    .fontWeight(.semibold)
                    .padding(.bottom, 30)
                
                Image("lotus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 400, maxHeight: 400, alignment: .center)
                    .padding(.bottom, 100)
                
                NavigationLink(destination: GameIntroView()) {
                    Text("Play Again")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width:400, height: 80)
                        .background(Color.accentColor)
                        .cornerRadius(20)
                        .padding(.bottom, 20)
                    
                }
                NavigationLink(destination: MainView()) {
                    Text("Back to Home")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width:400, height: 80)
                        .background(Color.accentColor)
                        .cornerRadius(20)
                    
                }
                
            }
        }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

struct GameResultView_Previews: PreviewProvider {
    static var previews: some View {
        GameResultView()
    }
}
