//
//  LabelContainer.swift
//  ProtocolOrientedMVVM
//
//  Created by kumapo on 2016/11/24.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation
import UIKit

protocol LabelContainer {
    associatedtype TextContent = TextPresentable
    var textLabel: UILabel? { get }
}

extension LabelContainer where TextContent == TextPresentable {
    func fillLabel(with content: TextContent) {
        if let textLabel = textLabel {
           textLabel.text = content.text
        }
    }
}
