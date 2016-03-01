//
//  GameViewController.swift
//  catsher
//
//  Created by KINARI NISHIYAMA on 2016/03/01.
//  Copyright © 2016年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit
//加速度センサーに必要なフレームワーク
import CoreMotion


class GameViewController: UIViewController {
    @IBOutlet weak var kagoImageView: UIImageView!
    @IBOutlet weak var catchedAppleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer : NSTimer!
    var gameTime: Float = 10.0
    
    var appleLabel: UILabel!
    var appleImageView: UIImageView!
    var catchedAppleCount: Int = 0
    var appleTime: CGFloat = 0.0
    
    var motinoManager = CMMotionManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("down:"), userInfo: nil, repeats: true)
        
        timeLabel.text = String(time)
        
        appleImageView = UIImageView(frame: CGRectMake(100, 100, 50, 50))
        appleImageView.image = UIImage(named: "light_blue.png")
        self.view.addSubview(appleImageView)
        
        self.startAccelerometer()

        // Do any additional setup after loading the view.
    }
    
    
    func startAccelerometer(){
        
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

}
