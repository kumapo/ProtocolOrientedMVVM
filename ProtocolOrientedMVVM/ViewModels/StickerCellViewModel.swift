//
//  StickerCellViewModel.swift
//  ProtocolOrientedMVVM
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation

struct StickerCellViewModel: ViewModelType {
    typealias ModelType = Sticker
    var model: ModelType
}

extension StickerCellViewModel: ImageURLPresentable {}
extension StickerCellViewModel: TextPresentable {}
