//
//  ShowStickerViewController.swift
//  ProtocolOrientedMVVM
//
//  Created by kumapo on 2016/11/23.
//  Copyright © 2016年 kumapo. All rights reserved.
//

import UIKit
import WebImage

class ShowStickerViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var textLabel: UILabel?
    
    var viewModel: ShowStickerViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        fillImageView(with: viewModel)
        fillLabel(with: viewModel)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        reuseImageView()
    }
}

extension ShowStickerViewController: ImageViewContainer {}
extension ShowStickerViewController: LabelContainer {}
