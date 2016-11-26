//
//  NGStickerCellViewModel.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/24.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation
import UIKit

struct NGStickerCellViewModel: ViewModelType {
    typealias ModelType = Sticker
    var model: ModelType
    
    var imageURL: URL? {
        if let url = URL(string: model.imageURLString) { return url }
        return nil
    }
    var placeholderImage: UIImage {
        return UIImage(named: "imgBlank")!
    }
}
