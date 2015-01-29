//
//  TeaViewController.swift
//  Teatea
//
//  Created by g08m11 on 2015/01/29.
//  Copyright (c) 2015年 Bloc. All rights reserved.
//

import UIKit
import Social
class TeaViewController: UIViewController {

  var myComposeView : SLComposeViewController!
  
  @IBOutlet var twitterButton: UIButton!
  
  @IBOutlet var teaView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let teaImage = UIImage(named: "t2.jpg")
        teaView.image = teaImage
        self.view.addSubview(teaView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


  
  /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
  @IBAction func sendTwitterButtonClick(sender: AnyObject) {
    myComposeView = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
    myComposeView.setInitialText("今日もお茶でゆとりを得たよ  #Teatea")
    self.presentViewController(myComposeView, animated: true, completion: nil)
  }


}
