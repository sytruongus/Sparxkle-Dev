//
//  WashStartTimeVC.swift
//  Sparxkle Dev
//
//  Created by Annas Salman on 27/01/2022.
//
import UIKit
import Foundation
import GradientCircularProgress

class WashStartTimeVC: UIViewController {

    
    @IBOutlet weak var myView:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let progress = GradientCircularProgress()

        let progressView = progress.show(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: myView.frame.width, height: myView.frame.height)), message: "Loading...", style: MyStyle())
        myView.addSubview(progressView!)
        progress.show()
        progress.updateMessage(message: "4 min")
        progress.dismiss()
        // Do any additional setup after loading the view.
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



public struct MyStyle : StyleProperty {
    /*** style properties **********************************************************************************/
    
    // Progress Size
    public var progressSize: CGFloat = 200
    
    // Gradient Circular
    public var arcLineWidth: CGFloat = 18.0
    public var startArcColor: UIColor = UIColor.clear
    public var endArcColor: UIColor = UIColor.red
    
    // Base Circular
    public var baseLineWidth: CGFloat? = 19.0
    public var baseArcColor: UIColor? = UIColor(named: "FFFFFF")?.withAlphaComponent(0.4)
    
    // Ratio
    public var ratioLabelFont: UIFont? = UIFont(name: "SF Pro Display Bold", size: 24.0)
    public var ratioLabelFontColor: UIColor? = UIColor.white
    
    // Message
    public var messageLabelFont: UIFont? = UIFont(name: "SF Pro Display Bold", size: 24.0)
    public var messageLabelFontColor: UIColor? = UIColor.white
    
    // Background
    public var backgroundStyle: BackgroundStyles = .transparent
    
    // Dismiss
    public var dismissTimeInterval: Double? = 0.0 // 'nil' for default setting.
    
    /*** style properties **********************************************************************************/
    
    public init() {}
}
