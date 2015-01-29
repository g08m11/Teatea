//
//  ViewController.swift
//  Teatea
//
//  Created by g08m11 on 2015/01/29.
//  Copyright (c) 2015年 Bloc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var weatherView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    let weatherImage = UIImage(named: "t1.jpg")
    weatherView.image = weatherImage
    self.view.addSubview(weatherView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

