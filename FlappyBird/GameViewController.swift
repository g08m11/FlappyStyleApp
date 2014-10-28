//
//  GameViewController.swift
//  FlappyStyleApp
//
//  Created by g08m11 on 2014/10/29
//  Copyright (c) 2014 g08m11 All rights reserved.
//

import UIKit
import SpriteKit
import Social

extension SKNode {
    class func unarchiveFromFile(file : NSString) -> SKNode? {
        
        let path = NSBundle.mainBundle().pathForResource(file, ofType: "sks")
        
        let sceneData = NSData(contentsOfFile: path!, options: .DataReadingMappedIfSafe, error: nil)!
        let archiver = NSKeyedUnarchiver(forReadingWithData: sceneData)
      
        archiver.setClass(self.classForKeyedUnarchiver(), forClassName: "SKScene")
        let scene = archiver.decodeObjectForKey(NSKeyedArchiveRootObjectKey) as GameScene
        archiver.finishDecoding()
        return scene
    }
}

class GameViewController: UIViewController {
  var myComposeView : SLComposeViewController!
  var myTwitterButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        if let scene = GameScene.unarchiveFromFile("GameScene") as? GameScene {
            // Configure the view.
            let skView = self.view as SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
          
            // twitter部分
            let hex: Int = 0x55ACEE
            let red = Double((hex & 0xFF0000) >> 16) / 255.0
            let green = Double((hex & 0xFF00) >> 8) / 255.0
            let blue = Double((hex & 0xFF)) / 255.0
            var myColor: UIColor = UIColor( red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(1.0))
            
            // ボタン.
            myTwitterButton = UIButton()
            myTwitterButton.frame = CGRectMake(0,0,100,100)
            myTwitterButton.backgroundColor = myColor
            myTwitterButton.layer.masksToBounds = true
            myTwitterButton.setTitle("Twitter", forState: UIControlState.Normal)
            myTwitterButton.titleLabel?.font = UIFont.systemFontOfSize(CGFloat(30))
            myTwitterButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            myTwitterButton.layer.cornerRadius = 50.0
            myTwitterButton.layer.position = CGPoint(x: self.view.frame.width - 55, y:self.view.frame.height - 85)
            myTwitterButton.tag = 1
            myTwitterButton.addTarget(self, action: "onPostToTwitter:", forControlEvents: .TouchUpInside)
            
            // buttonをviewに追加.
            self.view.addSubview(myTwitterButton)
        }
      
      
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> Int {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return Int(UIInterfaceOrientationMask.AllButUpsideDown.rawValue)
        } else {
            return Int(UIInterfaceOrientationMask.All.rawValue)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
  
    // ボタンイベント.
    func onPostToTwitter(sender : AnyObject) {
      
      // SLComposeViewControllerのインスタンス化.
      // ServiceTypeをTwitterに指定.
      myComposeView = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
      
      // 投稿するテキストを指定.
      myComposeView.setInitialText("Swiftでゲーム動かしたでどやっ！！ #SwiftGirls")
      
      // 投稿する画像を指定.
      myComposeView.addImage(UIImage(named: "SwiftGirls.gif"))
      
      // myComposeViewの画面遷移.
      self.presentViewController(myComposeView, animated: true, completion: nil)
    }
  
}
