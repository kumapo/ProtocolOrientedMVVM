//
//  StickerCell.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import UIKit
import WebImage

class StickerCell: UITableViewCell {
    var viewModel: StickerCellViewModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            
            fillImageView(with: viewModel)
            fillLabel(with: viewModel)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        reuseImageView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension StickerCell: ImageViewContainer {
    typealias ImageContent = StickerCellViewModel
}

extension StickerCell: LabelContainer {}
