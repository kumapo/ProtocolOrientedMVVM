//
//  BrowseStickersViewModel.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation

struct BrowseStickersViewModel {
    var cellViewModels: [StickerCellViewModel] = []
    
    init() {
        let stickers = [ Sticker(imageURLString: "http://hokusya.com/img/stamp/wg-HB/01.png", description: "Hello"),
                         Sticker(imageURLString: "http://hokusya.com/img/stamp/wg-HB/03.png", description: "やあ") ];
        
        self.cellViewModels = stickers.map { return StickerCellViewModel(model: $0) }
    }
}
