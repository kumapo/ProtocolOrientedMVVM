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
    associatedtype ImageContent
    
    var imageView: UIImageView? { get }
    func fillImageView(with content: ImageContent)
}

extension ImageViewContainer where ImageContent == ImageURLPresentable {
    func fillImageView(with content: ImageContent) {
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

extension ImageViewContainer where ImageContent == ImagePresentable {
    func fillImageView(with content: ImageContent) {
        if let imageView = imageView {
            imageView.image = content.image
        }
    }
}
