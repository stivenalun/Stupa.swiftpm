//
//  GameIntroView.swift
//  Stupa
//
//  Created by Stiven on 17/04/23.
//

import SwiftUI

struct GameIntroView: View {
    var body: some View {
        ZStack {
            Color(red: 0.9, green: 0.9, blue: 0.8, opacity: 1.00).edgesIgnoringSafeArea(.all)
            Text("           Before we start the game, \nlet's get to know the meaning of each \npart structure of the buddhist temple!!")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.top, 90)
            
            
            VStack{
                Image("details")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 800, height: 520)
                    .padding(.top, 200)
                    .padding(.bottom,120)
                
                NavigationLink(destination: GameView()) {
                    Text("Play Now")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width:400, height: 80)
                        .background(Color.accentColor)
                        .cornerRadius(20)
                    
                }
            }
        }.navigationBarHidden(false)
            .navigationBarBackButtonHidden(false)
    }
}

struct GameIntroView_Previews: PreviewProvider {
    static var previews: some View {
        GameIntroView()
    }
}


