//
//  ViewController.swift
//  RecommendingBookApp
//
//  Created by 大島秀顕 on 2017/03/03.
//  Copyright © 2017年 hideaki oshima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myView = CustomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(myView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ボタンが押されたときの処理
    @IBAction func tapButton(_ sender: UIButton) {
        let backgroundView = myView.makeBackgroundView(viewController: self)
        self.view.addSubview(backgroundView)
        let imageView = myView.makeImageView()
        backgroundView.addSubview(imageView)
        let nameLabel = myView.makeLabel()
        backgroundView.addSubview(nameLabel)
        let closeBtn = myView.makeCloseBtn()
        backgroundView.addSubview(closeBtn)
    }
}

