//
//  PhoneNumberVC.swift
//  Sparxkle
//
//  Created by Annas Salman on 27/12/2021.
//

import UIKit
import Foundation

class PhoneNumberVC: UIViewController {

    @IBOutlet weak var blurView:UIView!
    @IBOutlet weak var blurView2:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        blurView.addBlurredBackground(style: .regular)
        blurView.layer.borderWidth = 0.5
        blurView.layer.borderColor = UIColor.white.cgColor
        blurView.backgroundColor = UIColor(white: 0.3, alpha: 0.3)

    }

    
    @IBAction func backBtn( _ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func addBlurTo(_ image: UIImage) -> UIImage? {
        guard let ciImg = CIImage(image: image) else { return nil }
        let blur = CIFilter(name: "CIGaussianBlur")
        blur?.setValue(ciImg, forKey: kCIInputImageKey)
        blur?.setValue(5.0, forKey: kCIInputRadiusKey)
        if let outputImg = blur?.outputImage {
            return UIImage(ciImage: outputImg)
        }
        return nil
    }
    
}


extension UIView{
    func blurImage(mainView:UIView)
    {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
        self.insertSubview(blurEffectView, belowSubview: mainView)
        //self.addSubview(blurEffectView)
    }
    
    
    func addBlurredBackground(style: UIBlurEffect.Style) {
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = self.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurView.alpha = 0.5
        self.addSubview(blurView)
        self.sendSubviewToBack(blurView)
    }
}

//
//
//extension UIView: Blurable
//
//    {
//
//
//
//    }
