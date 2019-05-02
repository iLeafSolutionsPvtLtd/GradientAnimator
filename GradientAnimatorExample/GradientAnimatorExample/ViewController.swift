//
//  ViewController.swift
//  GradientAnimatorExample
//
//  Created by Vivek on 02/05/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit
import GradientAnimator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
         self.view.setGradient()
    }
    @IBAction func setThemAction(_ sender: UIButton) {
        let theme = self.storyboard?.instantiateViewController(withIdentifier: "ThemeViewController") as! ThemeViewController
        self.navigationController?.pushViewController(theme, animated: true)
    }
    
}

extension UIView{
    func setGradient(){
        self.removeGradient()
        
        let gradientView = GradientAnimator(frame: self.frame, theme: Colors.shared.themeColor, _startPoint: GradientPoints.bottomLeft, _endPoint: GradientPoints.topRight, _animationDuration: 3.0)
        gradientView.tag = 007
        self.insertSubview(gradientView, at: 0)
        gradientView.startAnimate()
        
    }
    func removeGradient(){
        if let gradView : GradientAnimator = self.subviews.filter({$0.tag == 007}).first as? GradientAnimator{
            gradView.removeFromSuperview()
        }
    }
}
