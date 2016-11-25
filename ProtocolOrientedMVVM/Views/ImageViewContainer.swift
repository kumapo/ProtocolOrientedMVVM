//
//  ImageViewContainer.swift
//  ProtocolOrientedMVVM
//
//  Created by kumapo on 2016/11/24.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation
import UIKit
import WebImage

protocol ImageViewContainer {
    
    var imageView: UIImageView? { get }
}

extension ImageViewContainer {
    func fillImageView<Content: WebImagePresentable>(with content: Content) {
        if let imageView = imageView {
            imageView.sd_setImage(with: content.imageURL, placeholderImage: content.placeholderImage)
        }
    }
    
    func reuseImageView() {
        if let imageView = imageView, imageView.sd_imageURL() != nil {
            imageView.sd_cancelCurrentImageLoad()
        }
    }
}
