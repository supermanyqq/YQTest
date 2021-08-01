//
//  ViewController.swift
//  YQText
//
//  Created by supermanyqq on 08/01/2021.
//  Copyright (c) 2021 supermanyqq. All rights reserved.
//

import UIKit
import YQText

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = NSMutableAttributedString(string: "324324")
        str.yq_setFont(.systemFont(ofSize: 12), range: NSRange(location: 0, length: str.length))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

