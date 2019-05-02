//
//  ThemeViewController.swift
//  GradientAnimatorExample
//
//  Created by Vivek on 30/04/19.
//  Copyright © 2019 Vivek. All rights reserved.
//

import UIKit
import GradientAnimator

class ThemeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.view.setGradient()
    }
    @IBAction func themeActions(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            Colors.shared.themeColor = GradientThemes.SolidStone
        case 1:
            Colors.shared.themeColor = GradientThemes.BlueLagoon
        case 2:
            Colors.shared.themeColor = GradientThemes.Sunrise
        case 3:
            Colors.shared.themeColor = GradientThemes.DIMIGO
        case 4:
            Colors.shared.themeColor = GradientThemes.GentleCare
        default:
            break
        }
        self.view.setGradient()
    }


}
