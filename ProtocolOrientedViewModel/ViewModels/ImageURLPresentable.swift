//
//  ImageURLPresentable.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation
import UIKit

protocol ImageURLPresentable {
    var imageURL: URL? { get }
    var placeholderImage: UIImage { get }
}

extension ViewModelType where Self: ImageURLPresentable, ModelType == Sticker {
    var imageURL: URL? {
        if let url = URL(string: model.imageURLString) { return url }
        return nil
    }
    var placeholderImage: UIImage {
        return UIImage(named: "imgBlank")!
    }
}
