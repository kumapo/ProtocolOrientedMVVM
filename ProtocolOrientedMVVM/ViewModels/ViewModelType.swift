//
//  ViewModelType.swift
//  ProtocolOrientedMVVM
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import Foundation

protocol ViewModelType {
    associatedtype ModelType
    
    var model: ModelType { get }
}
