//
//  ViewController.swift
//  RoundImage
//
//  Created by pankx on 2017/4/7.
//  Copyright © 2017年 pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRect(x: 0, y: 0, width: 80, height: 80)
        let rImage = UIImageView(frame: rect)
        rImage.center = view.center
        rImage.image = UIImage().kx_UIImage(rImage: UIImage(named: "Dog"), rect: rect,bg: view.backgroundColor)
        view.addSubview(rImage)
        

    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

