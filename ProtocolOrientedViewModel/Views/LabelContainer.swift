//
//  LabelContainer.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/24.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation
import UIKit

protocol LabelContainer {
    var textLabel: UILabel? { get }
}

extension LabelContainer {
    func fillLabel(with content: TextPresentable) {
        if let textLabel = textLabel {
           textLabel.text = content.text
        }
    }
}
