//
//  ViewController.swift
//  LottieLoader
//
//  Created by Cedan Misquith on 02/04/20.
//  Copyright © 2020 Cedan Misquith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAnimation(_ sender: UIButton) {
        self.view.showLoader()
        _ = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(timerDone), userInfo: nil, repeats: false)
    }
    
    @objc func timerDone(){
        self.view.hideLoader()
    }
    
}
extension UIView {
    func showLoader() {
        let loader = Loader(frame: frame)
        self.addSubview(loader)
    }
    func hideLoader() {
        if let loader = subviews.first(where: { $0 is Loader }) {
            loader.removeFromSuperview()
        }
    }
}

