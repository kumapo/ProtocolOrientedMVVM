//
//  ShowStickerViewModel.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation

struct ShowStickerViewModel: ViewModelType {
    typealias ModelType = Sticker
    
    var model: ModelType
    init(model: ModelType) {
        self.model = model
    }
}
