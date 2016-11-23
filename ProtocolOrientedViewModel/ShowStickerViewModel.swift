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
}

extension ShowStickerViewModel {
    init<VM: ViewModelType>(viewModel: VM) where VM.ModelType == ModelType {
        self.model = viewModel.model
    }
}

extension ShowStickerViewModel: WebImagePresentable {}
extension ShowStickerViewModel: TextPresentable {}
