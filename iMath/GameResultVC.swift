//
//  GameResultVC.swift
//  iEduGame
//
//  Created by Intelli on 2021-10-11.
//

import UIKit

class GameResultVC: UIViewController {

    var TotalQues = 10
    var CorrectAns = 0
    var WrongAns = 0
    var UnAnswered = 0
    
    @IBOutlet weak var lbl_total_ques: UILabel!
    @IBOutlet weak var lbl_correct_ans: UILabel!
    @IBOutlet weak var lbl_wrong_ans: UILabel!
    @IBOutlet weak var lbl_unanswered: UILabel!
    
    @IBOutlet weak var lblOption_Left: NSLayoutConstraint!
    @IBOutlet weak var lblOption_Right: NSLayoutConstraint!
    @IBOutlet weak var lblOption_Bottom: NSLayoutConstraint!
    @IBOutlet weak var lblOption_Height: NSLayoutConstraint!
    @IBOutlet weak var vw_result_top: NSLayoutConstraint!
    @IBOutlet weak var vw_option_top: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            self.lblOption_Left.constant = 150
            self.lblOption_Right.constant = 150
            //self.lblOption_Bottom.constant = 30
            self.lblOption_Height.constant = 70
            self.vw_result_top.constant =  250
            self.vw_option_top.constant = 250
        }
        
        // Do any additional setup after loading the view.
        self.lbl_total_ques.text = "\(self.TotalQues)"
        self.lbl_correct_ans.text = "\(self.CorrectAns)"
        self.lbl_wrong_ans.text = "\(self.WrongAns)"
        self.lbl_unanswered.text = "\(self.UnAnswered)"
        
    }
    

    @IBAction func btnBackToMenuClicked(_ sender: Any)
    {
        self.navigationController?.popToViewController((self.navigationController?.viewControllers[1])!, animated: true)
        //popToRootViewController(animated: true)
    }
    
    @IBAction func btnPlayAgainClicked(_ sender: Any)
    {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "NS_PlayGameAgain"), object: nil, userInfo: nil)
        self.navigationController?.popViewController(animated: true)
    }

}
