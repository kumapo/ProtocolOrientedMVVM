//
//  TextPresentable.swift
//  ProtocolOrientedMVVM
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation

protocol TextPresentable {
    var text: String { get }
}

extension ViewModelType where Self: TextPresentable, ModelType == Sticker {
    var text: String {
        guard 0 < model.description.characters.count else { return "no description" }
        return model.description
    }
}
