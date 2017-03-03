//
//  CustomView.swift
//  RecommendingBookApp
//
//  Created by 大島秀顕 on 2017/03/03.
//  Copyright © 2017年 hideaki oshima. All rights reserved.
//

import UIKit

class CustomView: UIView {

    var backgroundView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 閉じるボタンを押したときの処理
    func tapCloseBtn(sender: AnyObject) {
        backgroundView.removeFromSuperview()
    }
    
    // 部品を生成するための処理
    // ラベルと閉じるボタンの位置の決め方が微妙な気がするので教えて下さい。。
    func makeBackgroundView(viewController: UIViewController) -> UIView {
        backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.gray
        backgroundView.frame.size = CGSize(width: 360, height: 460)
        backgroundView.center.x = viewController.view.center.x
        backgroundView.center.y = viewController.view.center.y
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
        nameLabel.center.x = self.frame.width / 2 - 25
        nameLabel.center.y = 40
        nameLabel.textAlignment = NSTextAlignment.center
        return nameLabel
    }
    
    func makeCloseBtn() -> UIButton {
        let closeBtn = UIButton()
        closeBtn.setTitle("閉じる", for: UIControlState.normal)
        closeBtn.tintColor = UIColor.white
        closeBtn.frame.size = CGSize(width: 60, height: 20)
        closeBtn.center.x = self.frame.width / 2 - 25
        closeBtn.center.y = 430
        closeBtn.addTarget(self, action: #selector(CustomView.tapCloseBtn(sender:)), for: .touchUpInside)
        return closeBtn
    }
}
