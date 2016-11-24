//
//  NGStickerCell.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/24.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import UIKit
import WebImage

class NGStickerCell: UITableViewCell {
    var viewModel: StickerCellViewModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            
            if let imageView = imageView {
                imageView.sd_setImage(with: viewModel.imageURL, placeholderImage: viewModel.placeholderImage)
            }
            
            if let textLabel = textLabel {
                textLabel.text = viewModel.text
            }
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        if let imageView = imageView, imageView.sd_imageURL() != nil {
            imageView.sd_cancelCurrentImageLoad()
        }
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
