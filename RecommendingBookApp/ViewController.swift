//
//  ViewController.swift
//  RecommendingBookApp
//
//  Created by 大島秀顕 on 2017/03/03.
//  Copyright © 2017年 hideaki oshima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var backgroundView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ボタンが押されたときの処理
    @IBAction func tapButton(_ sender: UIButton) {
        let backgroundView = makeBackgroundView()
        self.view.addSubview(backgroundView)
        let imageView = makeImageView()
        backgroundView.addSubview(imageView)
        let nameLabel = makeLabel()
        backgroundView.addSubview(nameLabel)
        let closeBtn = makeCloseBtn()
        backgroundView.addSubview(closeBtn)
    }
    
    // 閉じるボタンを押したときの処理
    func tapCloseBtn(sender: AnyObject) {
        backgroundView.removeFromSuperview()
    }
    
    // 部品を生成するための処理
    // ラベルと閉じるボタンの位置の決め方が微妙な気がするので教えて下さい。。
    func makeBackgroundView() -> UIView {
        backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.gray
        backgroundView.frame.size = CGSize(width: 360, height: 460)
        backgroundView.center.x = self.view.center.x
        backgroundView.center.y = self.view.center.y
        return backgroundView
    }
    
    func makeImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.frame.size = CGSize(width: 200, height: 300)
        imageView.frame = CGRect(x: 80, y: 80, width: 200, height: 300)
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "aoa1.jpg")
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        return imageView
    }
    
    func makeLabel() -> UILabel {
        let nameLabel = UILabel()
        nameLabel.text = "ユナ"
        nameLabel.textColor = UIColor.white
        nameLabel.frame.size = CGSize(width: 50, height: 18)
        nameLabel.font = UIFont(name: "HiraKakuProN-W6", size: 15)
        nameLabel.center.x = self.view.frame.width / 2 - 25
        nameLabel.center.y = 40
        nameLabel.textAlignment = NSTextAlignment.center
        return nameLabel
    }
    
    func makeCloseBtn() -> UIButton {
        let closeBtn = UIButton()
        closeBtn.setTitle("閉じる", for: UIControlState.normal)
        closeBtn.tintColor = UIColor.white
        closeBtn.frame.size = CGSize(width: 60, height: 20)
        closeBtn.center.x = self.view.frame.width / 2 - 25
        closeBtn.center.y = 430
        closeBtn.addTarget(self, action: #selector(ViewController.tapCloseBtn(sender:)), for: .touchUpInside)
        return closeBtn
    }
}

