//
//  ShowStickerViewController.swift
//  ProtocolOrientedViewModel
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import UIKit
import WebImage

class ShowStickerViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: ShowStickerViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let imageURL = viewModel.imageURL {
            imageView.sd_setImage(with: imageURL,
                                  placeholderImage: viewModel.placeholderImage)
        }
        textLabel.text = viewModel.text
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let imageView = imageView, imageView.sd_imageURL() != nil {
            imageView.sd_cancelCurrentImageLoad()
        }
    }
}
