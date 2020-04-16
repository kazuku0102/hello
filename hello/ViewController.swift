//
//  ViewController.swift
//  hello
//
//  Created by 蕭聿莘 on 2020/4/13.
//  Copyright © 2020 Kazuku. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        let textImage = UIImage(named: "sunglasses")//讀取的圖片
        let textImageView = UIImageView(image: textImage)//將圖片加入ImageView
        let url = URL(string: "https://bit.ly/2yepDbb")
        let player = AVPlayer(url: url!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(playerLayer)
        playerLayer.frame = CGRect(origin: CGPoint(x: 2, y: 300), size: textImageView.frame.size)
        playerLayer.mask = textImageView.layer
        player.play()
        
        
//        let hatImageView = UIImageView(image: UIImage(named: "hat"))
        let hatImage = UIImage(named: "hat")
        let hatImageView = UIImageView(image: hatImage)
        hatImageView.frame = CGRect(origin: CGPoint(x: 55, y: 50), size: hatImageView.frame.size)

        let starImage = UIImage(named: "star")
        let starImageView = UIImageView(image: starImage)
        starImageView.mask = hatImageView
        self.view.addSubview(starImageView)
        
}
    
}
