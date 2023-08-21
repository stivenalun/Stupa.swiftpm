//
//  GameIntroView.swift
//  Stupa
//
//  Created by Stiven on 13/04/23.
//

import SwiftUI

struct FlashcardView: View {
    
    @StateObject var viewModel = FlashCardViewModel()
    @State var index : Int = 0
    
    var body: some View {
        if (index < viewModel.data.count) {
            ZStack {
                Color(red: 0.9, green: 0.9, blue: 0.8, opacity: 1.00).edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading, spacing: 45){
                    VStack (alignment:.leading, spacing: 3) {
                        Text("\(index+1)")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.horizontal, 80)
                        Text("Buddhist temple location")
                            .font(.system(size: 20))
                            .padding(.horizontal, 80)
                        Text(viewModel.data[self.index].provinceText)
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .padding(.horizontal, 80)
                        
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 660, height: 750)
                        
                        VStack {
                            Image(viewModel.data[self.index].image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 600, height: 380, alignment: .center)
                                .padding(.top, 40)
                            Text(viewModel.data[self.index].templeText)
                                .foregroundColor(.black)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                            
                            Text(viewModel.data[self.index].descriptionText)
                                .foregroundColor(.black)
                                .font(.system(size: 17))
                                .padding(.horizontal, 116)
                                .padding(.top, 10)
                                .padding(.bottom, 20)
                        }
                        
                    }
                    //button next
                    HStack (alignment:.center) {
                        Button(action: {
                            if index < 5 {
                                self.index = self.index - 1
                            }
                        }) {
                            Text(" < Previous")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                                .padding(.horizontal)
                                .frame(minWidth:200, maxHeight: 50)
                            
                        }
                        .background((index != 0) ? Color.accentColor : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                        .cornerRadius(8)
                        .disabled(index == 0)
                        
                        Button(action: {
                            if index < 17 {
                                self.index = self.index + 1
                            } else {
                                
                            }
                        }) {
                            Text("Next >")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                                .padding(.horizontal)
                                .frame(minWidth:200, maxHeight: 50)
                            
                        }
                        .background(Color.accentColor)
                        .cornerRadius(8)
                    }
                    .frame(maxWidth: .infinity)
                }
            }.navigationBarHidden(false)
                .navigationBarBackButtonHidden(false)
            
        }
        else {
            FlashcardFinalView()
        } 
    } 
} 

struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView()
    }
}
