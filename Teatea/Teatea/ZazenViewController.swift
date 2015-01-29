//
//  ZazenViewController.swift
//  Teatea
//
//  Created by g08m11 on 2015/01/29.
//  Copyright (c) 2015年 Bloc. All rights reserved.
//

import UIKit
import Social

class ZazenViewController: UIViewController {

  var myComposeView : SLComposeViewController!
  @IBOutlet var twitterButton: UIButton!

  var cnt : Float = 0
  
  var myLabel : UILabel!
  
  var timer : NSTimer!
  
  override func viewDidLoad() {
    
    myLabel = UILabel(frame: CGRectMake(0,0,200,50))
    myLabel.backgroundColor = UIColor.grayColor()
    myLabel.layer.masksToBounds = true
    myLabel.layer.cornerRadius = 20.0
    myLabel.text = "Time:\(cnt)"
    myLabel.textColor = UIColor.whiteColor()
    myLabel.shadowColor = UIColor.grayColor()
    myLabel.textAlignment = NSTextAlignment.Center
    myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
    self.view.backgroundColor = UIColor.whiteColor()
    self.view.addSubview(myLabel)
    
    let myButton = UIButton(frame: CGRectMake(0, 0, 200, 50))
    myButton.layer.masksToBounds = true
    myButton.layer.cornerRadius = 20.0
    myButton.backgroundColor = UIColor.grayColor()
    myButton.setTitle("Zazen Stop", forState: UIControlState.Normal)
    myButton.layer.position = CGPointMake(self.view.center.x, self.view.center.y + 100)
    myButton.addTarget(self, action: "onMyButtonClick:", forControlEvents: UIControlEvents.TouchUpInside)
    self.view.addSubview(myButton)
    
    timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
  }
  
  //ボタンが押された時に呼ばれるメソッド.
  func onMyButtonClick(sender : UIButton){
    
    //timerが動いてるなら.
    if timer.valid == true {
      
      timer.invalidate()
      
      sender.setTitle("Zazen Start", forState: UIControlState.Normal)
    }
    else{
      
      //timerを生成する.
      timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
      
      //ボタンのタイトル変更.
      sender.setTitle("Zazen Stop", forState: UIControlState.Normal)
    }
    
    
    
  }
  
  //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
  func onUpdate(timer : NSTimer){
    
    cnt += 0.1
    
    let str = "Time:".stringByAppendingFormat("%.1f",cnt)
    
    myLabel.text = str
    
  }
  @IBAction func sendTwitterButtonClick(sender: AnyObject) {
    myComposeView = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
    myComposeView.setInitialText("今日も座禅でゆとりを得たよ。  #Teatea")
    self.presentViewController(myComposeView, animated: true, completion: nil)
    
  }
  
  
  
}
