//
//  ViewModelType+WebImagePresentable.swift
//  ProtocolOrientedMVVM
//
//  Created by kumapo on 2016/11/25.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation
import UIKit

extension ViewModelType where Self: WebImagePresentable, ModelType == Sticker {
    var imageURL: URL? {
        if let url = URL(string: model.imageURLString) { return url }
        return nil
    }
    var placeholderImage: UIImage {
        return UIImage(named: "imgBlank")!
    }
}
