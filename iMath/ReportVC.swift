//
//  ReportVC.swift
//  iEduGame
//
//  Created by Intelli on 2021-10-11.
//

import UIKit

class ReportVC: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBOutlet weak var lbl_grade: UILabel!
    @IBOutlet weak var lbl_rate: UILabel!
    @IBOutlet weak var lbl_time_spent: UILabel!
    @IBOutlet weak var lbl_accuracy: UILabel!
    
    @IBOutlet weak var lblOption_Left: NSLayoutConstraint!
    @IBOutlet weak var lblOption_Right: NSLayoutConstraint!
    @IBOutlet weak var lblOption_Bottom: NSLayoutConstraint!
    @IBOutlet weak var lblOption_Height: NSLayoutConstraint!
    @IBOutlet weak var vw_result_top: NSLayoutConstraint!
    @IBOutlet weak var vw_option_top: NSLayoutConstraint!
    
    @IBOutlet weak var cns_img_level_up_Width: NSLayoutConstraint!
    @IBOutlet weak var btn_close: UIButton!
    @IBOutlet weak var img_settings: UIImageView!
    @IBOutlet weak var stack_top: NSLayoutConstraint!
    @IBOutlet weak var stack_height: NSLayoutConstraint!
    @IBOutlet weak var cns_img_settings_top: NSLayoutConstraint!
    @IBOutlet weak var cns_img_settings_left: NSLayoutConstraint!
    @IBOutlet weak var cns_img_settings_bottom: NSLayoutConstraint!
    @IBOutlet weak var cns_btn_close_width: NSLayoutConstraint!
    @IBOutlet weak var cns_btn_close_height: NSLayoutConstraint!
    @IBOutlet weak var cns_label_width: NSLayoutConstraint!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        appDelegate!.retrieveData(game : "")
        
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
//            self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (319/512)//(71/75)
            self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (99/125)
            self.cns_img_settings_top.constant = UIScreen.main.bounds.size.height * (15/119)
            self.cns_img_settings_left.constant = UIScreen.main.bounds.size.width * (7/150)
            self.cns_img_settings_bottom.constant = UIScreen.main.bounds.size.height * (13/400)
        }
        else
        {

            self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (62/75)
            self.cns_img_settings_top.constant = UIScreen.main.bounds.size.height * (121/689)
            self.cns_img_settings_left.constant = UIScreen.main.bounds.size.width * (36/1125)
            self.cns_img_settings_bottom.constant = UIScreen.main.bounds.size.height * (20/565)
        }
        
//        if(UIDevice.current.userInterfaceIdiom == .pad)
//        {
//            self.lblOption_Left.constant = 150
//            self.lblOption_Right.constant = 150
//            //self.lblOption_Bottom.constant = 30
//            self.lblOption_Height.constant = 70
//            self.vw_result_top.constant =  250
//            self.vw_option_top.constant = 250
//        }
        
        if((appDelegate?.arTotalQuestions.count)! > 0)
        {
            let timeSpent = appDelegate?.arTimeSpent.reduce(0, +)
           // let min = Int(NSString(format: "%0.2d", ((timeSpent!/60) % 60)) as String)
            let min = CGFloat((CGFloat(timeSpent!)/60.0))
            let IntMin = Int((CGFloat(timeSpent!)/60.0))
            
            // Do any additional setup after loading the view.
    //        self.lbl_total_ques.text = "\((appDelegate?.arTotalQuestions.reduce(0, +))!)"
    //        self.lbl_correct_ans.text = "\((appDelegate?.arCorrectAnswers.reduce(0, +))!)"
            
            let accuracy = ((appDelegate?.arCorrectAnswers.reduce(0, +))! * 100 / (appDelegate?.arTotalQuestions.reduce(0, +))!)
            self.lbl_accuracy.text = "\(accuracy)%"
                    
            if(min > 60)
            {
                let minToShow = (IntMin % 60)
                let hr = (IntMin/60)
                self.lbl_time_spent.text = "\((hr < 10) ? "0\(hr)" : "\(hr)"):\((minToShow < 10) ? "0\(minToShow)" : "\(minToShow)")"
            }
            else
            {
                self.lbl_time_spent.text = "00:\((IntMin < 10) ? "0\(IntMin)" : "\(IntMin)")"
            }
            
            //self.lbl_time_spent.text = "\(String(format: "%.2f", min))"
            //"\(NSString(format: "%0.2d", min) as String)"

            self.lbl_rate.text = "\(Int(CGFloat((appDelegate?.arTotalQuestions.reduce(0, +))!)/min))/min"
            
            if(accuracy >= 90)
            {
                self.lbl_grade.text = "A++"
            }
            else if(accuracy >= 80)
            {
                self.lbl_grade.text = "A+"
            }
            else if(accuracy >= 70)
            {
                self.lbl_grade.text = "A"
            }
            else if(accuracy >= 60)
            {
                self.lbl_grade.text = "A-"
            }
            else if(accuracy >= 50)
            {
                self.lbl_grade.text = "A--"
            }
            else
            {
                self.lbl_grade.text = "B"
            }
        }
        else
        {
            self.lbl_accuracy.text = "0%"
            self.lbl_time_spent.text = "00:00"
            self.lbl_rate.text = "0/min"
            self.lbl_grade.text = "-"
        }
      
//        let totalScore = appDelegate?.arSmartScore.reduce(0, +)
//        self.lbl_smart_score.text = "\(Int(totalScore!)/Int((appDelegate?.arSmartScore.count)!))"
                     
    }
    
    override func viewDidLayoutSubviews() {
        
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            self.stack_top.constant = self.img_settings.frame.size.height * (2.1/7)
            self.stack_height.constant = self.img_settings.frame.size.height * (355/1169)
            self.cns_btn_close_width.constant = self.img_settings.frame.size.width * (7/33)
            self.cns_btn_close_height.constant = self.img_settings.frame.size.height * (50/1169)
            self.cns_label_width.constant = self.img_settings.frame.size.width * (29/114)
        }
        else
        {
            
            self.stack_top.constant = self.img_settings.frame.size.height * (22/89)
            self.stack_height.constant = self.img_settings.frame.size.height * (23.5/89)
            self.cns_btn_close_width.constant = self.img_settings.frame.size.width * (255/977)
            self.cns_btn_close_height.constant = self.img_settings.frame.size.height * (75/1781)
            self.cns_label_width.constant = self.img_settings.frame.size.width * (29/114)
        }
        
        let fontSize = (UIDevice.current.userInterfaceIdiom == .pad) ? 37.5 : (UIScreen.main.bounds.size.width *  (19.3/375))
//        if(UIScreen.main.bounds.size.height <= 667) //667
//        {
//            fontSize = 19.3
//        }
        self.lbl_time_spent.font = UIFont(name: "Chalkduster", size: fontSize )
        self.lbl_accuracy.font = UIFont(name: "Chalkduster", size: fontSize)
        self.lbl_rate.font = UIFont(name: "Chalkduster", size: fontSize )
        self.lbl_grade.font = UIFont(name: "Chalkduster", size: fontSize)
        
    }
    
    @IBAction func btnBackClicked(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
}
