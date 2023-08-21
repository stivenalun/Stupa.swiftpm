//
//  GameView+DragGesture.swift
//  Stupa
//
//  Created by Stiven on 21/08/23.
//

import SwiftUI

extension GameView {
    
    var DragGesture1: some Gesture {
        DragGesture()
            .onChanged ({ value in
                isEnded = false
                print(value.location)
                self.dragOffset1 = value.location
                if value.location.x > -20 && value.location.x < 10 && value.location.y > 860 && value.location.y < 910 {
                    self.Offset1IsPlacedCorrectly = true
                }
            }
            )
            .onEnded({ value in
                if Offset1IsPlacedCorrectly {
                    self.dragOffset1 = CGPoint(x: 0, y: 890)
                } else {
                    self.dragOffset1 = CGPoint(x: 248, y: 355)
                }
                isEnded = true
            })
    }
    
    var DragGesture2: some Gesture {
        DragGesture()
            .onChanged ({ value in
                isEnded = false
                print(value.location)
                self.dragOffset2 = value.location
                if value.location.x > -10 && value.location.x < 15 && value.location.y > 520 && value.location.y < 545 {
                    self.Offset2IsPlacedCorrectly = true
                }
            }
            )
            .onEnded({ value in
                if Offset2IsPlacedCorrectly {
                    self.dragOffset2 = CGPoint(x: 0, y: 531)
                } else {
                    self.dragOffset2 = CGPoint(x: 249, y: 259)
                }
                isEnded = true
            })
    }
    
    var DragGesture3: some Gesture {
        DragGesture()
            .onChanged ({ value in
                isEnded = false
                print(value.location)
                self.dragOffset3 = value.location
                if value.location.x > -20 && value.location.x < 20 && value.location.y > 90 && value.location.y < 120 {
                    self.Offset3IsPlacedCorrectly = true
                }
            }
            )
            .onEnded({ value in
                if Offset3IsPlacedCorrectly {
                    self.dragOffset3 = CGPoint(x: 0, y: 104.5)
                } else {
                    self.dragOffset3 = CGPoint(x: -272, y: -152)
                }
                isEnded = true
            })
    }
    
    var DragGesture4: some Gesture {
        DragGesture()
            .onChanged ({ value in
                isEnded = false
                print(value.location)
                self.dragOffset4 = value.location
                if value.location.x > -15 && value.location.x < 20 && value.location.y > -375 && value.location.y < -350 {
                    self.Offset4IsPlacedCorrectly = true
                }
            }
            )
            .onEnded({ value in
                if Offset4IsPlacedCorrectly {
                    self.dragOffset4 = CGPoint(x: 0, y: -370.5)
                } else {
                    self.dragOffset4 = CGPoint(x: 256, y: -145)
                }
                isEnded = true
            })
    }
    
    var DragGesture5: some Gesture {
        DragGesture()
            .onChanged ({ value in
                isEnded = false
                print(value.location)
                self.dragOffset5 = value.location
                if value.location.x > -15 && value.location.x < 15 && value.location.y > -735 && value.location.y < -710 {
                    self.Offset5IsPlacedCorrectly = true
                }
            }
            )
            .onEnded({ value in
                if Offset5IsPlacedCorrectly {
                    self.dragOffset5 = CGPoint(x: 0, y: -723.5)
                } else {
                    self.dragOffset5 = CGPoint(x: -285, y: -391)
                }
                isEnded = true
            })
    }
    
}

