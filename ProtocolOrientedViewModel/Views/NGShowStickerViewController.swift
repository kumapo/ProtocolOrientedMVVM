//
//  NGShowStickerViewController.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/24.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import UIKit

class NGShowStickerViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: ShowStickerViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let imageView = imageView {
            imageView.sd_setImage(with: viewModel.imageURL, placeholderImage: viewModel.placeholderImage)
        }
        
        if let textLabel = textLabel {
            textLabel.text = viewModel.text
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let imageView = imageView, imageView.sd_imageURL() != nil {
            imageView.sd_cancelCurrentImageLoad()
        }
    }

}
