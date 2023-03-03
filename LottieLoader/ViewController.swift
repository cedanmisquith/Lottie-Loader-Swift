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
        self.view.showLoader(isFromServer: false)
        _ = Timer.scheduledTimer(timeInterval: 20, target: self, selector: #selector(timerDone), userInfo: nil, repeats: false)
    }
    
    @objc func timerDone(){
        self.view.hideLoader()
    }
    
}
extension UIView {
    func showLoader(isFromServer: Bool = false) {
        let loader = Loader(frame: frame, isFromServer: isFromServer)
        self.addSubview(loader)
    }
    func hideLoader() {
        if let loader = subviews.first(where: { $0 is Loader }) {
            loader.removeFromSuperview()
        }
    }
}

