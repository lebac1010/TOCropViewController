//
//  ExampleViewController.swift
//  TOCropViewControllerExample
//
//  Created by Duong Le Bac on 11/20/20.
//  Copyright © 2020 Tim Oliver. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {
    @IBOutlet weak var containerCropView: UIView!
    private var croppingStyle = CropViewCroppingStyle.default
    var cropController: CropViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let image = UIImage(named: "sunflower.jpg")!
        cropController = CropViewController(croppingStyle: croppingStyle, image: image)
        cropController.toCropViewController.kTOCropViewControllerToolbarHeight = 0
        containerCropView.addSubview(cropController.view)
        cropController.view.frame = containerCropView.bounds
    }
    
    @IBAction func ratioAction(_ sender: UIButton) {
        if cropController.toCropViewController.aspectRatioLockEnabled {
            cropController.toCropViewController.aspectRatioLockEnabled = false
            cropController.toCropViewController.toolbar.clampButtonGlowing = false
        }
        cropController.toCropViewController.showAspectRatioDialogCustom(sender.tag)
        cropController.toCropViewController.aspectRatioLockEnabled = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
