//
//  ViewController.swift
//  Syoryuken
//
//  Created by user on 2023/08/28.
//

import UIKit

class ViewController: UIViewController {
    
    //キャラクターを配置
    @IBOutlet weak var aImage: UIImageView!
    //空の配列を配置
    var attackImageArray : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //nillが返らなくなるまで配列に指定のイメージを追加
        while let attackImage = UIImage(named: "attack\(attackImageArray.count+1)") {
            attackImageArray.append(attackImage)
        }
    }
    
    //アクションボタンの配置
    @IBAction func startButton(_ sender: Any) {
        // 配列を使ったアニメーションの配置
        aImage.animationImages = attackImageArray
        // イメージを切り替える間隔
        aImage.animationDuration = 1.5
        // アニメーションの繰り返し回数
        aImage.animationRepeatCount = 1
        // アニメーションを開始
        aImage.startAnimating()
    }
    
    
}
