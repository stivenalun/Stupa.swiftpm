//
//  FlashCardModel.swift
//  
//
//  Created by Stiven on 21/08/23.
//

import Foundation

class FlashCardViewModel: ObservableObject {
    @Published var data: [FlashCardModel] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.data = myFlashcard
    }
}
