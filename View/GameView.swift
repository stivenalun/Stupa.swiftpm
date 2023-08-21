//
//  GameView.swift
//  Stupa
//
//  Created by Stiven on 17/04/23.
//

import SwiftUI

struct GameView: View {
    @State var dragOffset1: CGPoint = CGPoint(x: 248, y:355)
    @State var dragOffset2: CGPoint = CGPoint(x: 249, y:259)
    @State var dragOffset3: CGPoint = CGPoint(x: -272, y:-152)
    @State var dragOffset4: CGPoint = CGPoint(x: 256, y:-145)
    @State var dragOffset5: CGPoint = CGPoint(x: -285, y:-391)
    @State var Offset1IsPlacedCorrectly: Bool = false
    @State var Offset2IsPlacedCorrectly: Bool = false
    @State var Offset3IsPlacedCorrectly: Bool = false
    @State var Offset4IsPlacedCorrectly: Bool = false
    @State var Offset5IsPlacedCorrectly: Bool = false
    @State var isEnded: Bool = false
    @State var toResult: Bool = false
    
    var body: some View {
        
        ZStack {
            Color(red: 0.9, green: 0.9, blue: 0.8, opacity: 1.00).edgesIgnoringSafeArea(.all)
            Text("How to Play")
                .font(.system(size: 40))
                .fontWeight(.semibold)
                .position(x:362, y:224)
            
            VStack {
                Text("""
1. Observe the temple picture on the left side.
2. There are 5 pieces of the temple that have
     not been arranged yet.
3. Drag the temple pieces as a whole into
     the available striped pattern
""")
                .position(x:480, y:325)
                .font(.system(size: 23))
                
                Text("Muara Takus")
                    .font(.system(size: 55))
                    .fontWeight(.bold)
                    .position(x:410, y: 420)
            }
            
            VStack {
                Image("full_muara")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 215)
                    .padding(.top, 10)
                    .position(x:120, y:300)
                    .background(
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .frame(width: 160, height: 210)
                            .position(x:120, y:300)
                    )
            }
            
            VStack {
                Image("art1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 280)
                    .offset(x: dragOffset1.x, y: dragOffset1.y)
                    .gesture(DragGesture1)
                    .onChange(of: Offset1IsPlacedCorrectly) { newValue in
                        toResult = Offset1IsPlacedCorrectly && Offset2IsPlacedCorrectly && Offset3IsPlacedCorrectly &&
                        Offset4IsPlacedCorrectly && Offset5IsPlacedCorrectly
                    }
                
                Image("outline1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 280)
                    .position(x:410, y:740)
                
                Image("art2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 280)
                    .offset(x: dragOffset2.x, y: dragOffset2.y)
                    .gesture(DragGesture2)
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            self.dragOffset2 = value.location
                        })
                    )
                    .onChange(of: Offset2IsPlacedCorrectly) { newValue in
                        toResult = Offset1IsPlacedCorrectly && Offset2IsPlacedCorrectly && Offset3IsPlacedCorrectly &&
                        Offset4IsPlacedCorrectly && Offset5IsPlacedCorrectly
                    }
                
                Image("outline2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 280)
                    .position(x:410, y:385)
                
                Image("art3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 320)
                    .offset(x: dragOffset3.x, y: dragOffset3.y)
                    .gesture(DragGesture3)
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            self.dragOffset3 = value.location
                        })
                    )
                    .onChange(of: Offset3IsPlacedCorrectly) { newValue in
                        toResult = Offset1IsPlacedCorrectly && Offset2IsPlacedCorrectly && Offset3IsPlacedCorrectly &&
                        Offset4IsPlacedCorrectly && Offset5IsPlacedCorrectly
                    }
                
                Image("outline3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 320)
                    .position(x:410, y:-62)
                
                Image("art4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 280)
                    .offset(x: dragOffset4.x, y: dragOffset4.y)
                    .gesture(DragGesture4)
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            self.dragOffset4 = value.location
                        })
                    )
                    .onChange(of: Offset4IsPlacedCorrectly) { newValue in
                        toResult = Offset1IsPlacedCorrectly && Offset2IsPlacedCorrectly && Offset3IsPlacedCorrectly &&
                        Offset4IsPlacedCorrectly && Offset5IsPlacedCorrectly
                    }
                
                Image("outline4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 280)
                    .position(x:410, y:-518)
                
                Image("art5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 180)
                    .offset(x: dragOffset5.x, y: dragOffset5.y)
                    .gesture(DragGesture5)
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            self.dragOffset5 = value.location
                        })
                    )
                    .onChange(of: Offset5IsPlacedCorrectly) { newValue in
                        toResult = Offset1IsPlacedCorrectly && Offset2IsPlacedCorrectly && Offset3IsPlacedCorrectly &&
                        Offset4IsPlacedCorrectly && Offset5IsPlacedCorrectly
                    }
                Image("outline5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 180)
                    .position(x:410, y:-823)
            }
            NavigationLink(destination: GameResultView(), isActive: $toResult) {
                EmptyView()
                
            }
        } .navigationBarHidden(false)
            .navigationBarBackButtonHidden(false)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
