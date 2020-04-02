//
//  Loader.swift
//  kuplup
//
//  Created by Cedan Misquith on 02/04/20.
//  Copyright © 2020 CookieByte. All rights reserved.
//
import UIKit
import Lottie

class Loader: UIView {
    
    var animationView: AnimationView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        self.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        animationView = AnimationView()
        animationView?.frame = CGRect(x: frame.width/2-50, y: frame.height/2-50, width: 100, height: 100)
        animationView?.animation = Animation.named("lottie_loader")
        animationView?.loopMode = .loop
        animationView?.contentMode = .scaleAspectFit
        addSubview(animationView!)
        animationView?.play()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
