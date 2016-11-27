//
//  ViewModelType+WebImagePresentable.swift
//  ProtocolOrientedMVVM
//
//  Created by kumapo on 2016/11/25.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation
import UIKit

extension ViewModelType where Self: ImageURLPresentable, ModelType == Sticker {
    var imageURL: URL? {
        return URL(string: model.imageURLString)
    }
    var placeholderImage: UIImage {
        return UIImage(named: "imgBlank")!
    }
}
