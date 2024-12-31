//
//  ViewController.swift
//  iEduGame
//
//  Created by Intelli on 2021-09-22.
//

import UIKit
import SwiftyGif

class SplashScreenVC: UIViewController {
    

    @IBOutlet weak var img_View: UIImageView!
    @IBOutlet weak var img_top: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.tblScores.register(UINib(nibName: "LeaderBoardTblCell", bundle: nil), forCellReuseIdentifier: "LeaderBoardTblCell")

//        // Do any additional setup after loading the view.
        
        let lyr = CAGradientLayer()
        lyr.frame = self.view.bounds
        lyr.type = .radial
        lyr.colors = [UIColor(red: 0/255, green: 128/255, blue: 255/255, alpha: 1.0).cgColor, UIColor(red: 15/255, green: 82/255, blue: 186/255, alpha: 1.0).cgColor, UIColor(red: 16/255, green: 52/255, blue: 166/255, alpha: 1.0).cgColor, UIColor(red: 17/255, green: 30/255, blue: 108/255, alpha: 1.0).cgColor, UIColor(red: 0/255, green: 0/255, blue: 128/255, alpha: 1.0).cgColor]
        //[UIColor(red: 26/255, green: 55/255, blue: 117/255, alpha: 1.0).cgColor, UIColor(red: 15/255, green: 31/255, blue: 58/255, alpha: 1.0).cgColor]
//        [UIColor.red.cgColor,
//                      UIColor.yellow.cgColor,
//                      UIColor.green.cgColor,
//                      UIColor.blue.cgColor]
        lyr.locations = [0, 0.30, 0.50, 0.80, 1.0]// [ 0, 0.1, 0.2, 1 ]
        lyr.startPoint = CGPoint(x: 0.5, y: 0.5)
        lyr.endPoint = CGPoint(x: 1, y: 0.8)
      //  self.view.layer.insertSublayer(lyr, at: 0)
       
        do {
        let gif = try UIImage(gifName: "splash.gif")
        self.img_View.setGifImage(gif, loopCount: -1)
        }
        catch {
           print(error)
       }
        
        let CatSelVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CategorySelectionVC") as! CategorySelectionVC
        
        DispatchQueue.main.asyncAfter(deadline: .now() +  2.7) {
            self.navigationController?.pushViewController(CatSelVC, animated: false)
            
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        let remaining_space = (UIScreen.main.bounds.size.height/2) - (self.img_View.frame.size.height/2)
        self.img_top.constant = remaining_space * 0.83
        //UIScreen.main.bounds.size.height * 0.375
    }

}

