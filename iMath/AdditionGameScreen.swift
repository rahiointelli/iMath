//
//  CategorySelectionVC.swift
//  iEduGame
//
//  Created by Intelli on 2021-09-22.
//

import UIKit
import Toast_Swift
import CoreData

class AdditionGameScreen: UIViewController {
        
    @IBOutlet weak var lblNumber1: UILabel!
    @IBOutlet weak var lblNumber2: UILabel!
    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!    
    @IBOutlet weak var vw_progress: UIProgressView!
    @IBOutlet weak var lblGameSign: UILabel!
    @IBOutlet weak var bg_View: UIView!
    @IBOutlet weak var lblAnswerView_Height: NSLayoutConstraint!
    @IBOutlet weak var img_bubble_top: NSLayoutConstraint!
    @IBOutlet weak var answer_vw_btm: NSLayoutConstraint!
    @IBOutlet weak var bubble_view: UIImageView!
    @IBOutlet weak var first_ques_top: NSLayoutConstraint!
    @IBOutlet weak var ques_img_width: NSLayoutConstraint!
    @IBOutlet weak var ques_img_hgt: NSLayoutConstraint!
//    @IBOutlet weak var second_row_height: NSLayoutConstraint!
//    @IBOutlet weak var first_que_row1: UIStackView!
//    @IBOutlet weak var first_que_row2: UIStackView!
//    @IBOutlet weak var second_que_row1: UIStackView!
//    @IBOutlet weak var second_que_row2: UIStackView!
    @IBOutlet weak var main_bg_view: UIImageView!
    @IBOutlet weak var cns_bubble_height: NSLayoutConstraint!
    @IBOutlet weak var cns_bubble_width: NSLayoutConstraint!
    @IBOutlet weak var ipad_bubble_height: NSLayoutConstraint!
    @IBOutlet weak var ipad_bubble_width: NSLayoutConstraint!
    @IBOutlet weak var vw_answer_container: UIStackView!
    @IBOutlet weak var vw_question_container: UIStackView!
    @IBOutlet weak var lbl_answer_text: UILabel!
    @IBOutlet weak var lbl_correct_answer: UILabel!
    @IBOutlet weak var cns_centerToAns1: NSLayoutConstraint!
    @IBOutlet weak var cns_centerToAns2: NSLayoutConstraint!
    @IBOutlet weak var cns_centerToAns3: NSLayoutConstraint!
    @IBOutlet weak var cns_vwSmartScoreTop: NSLayoutConstraint!
    @IBOutlet weak var cns_vwCorrectAnswerTop: NSLayoutConstraint!
    @IBOutlet weak var cns_vwTimeSpentTop: NSLayoutConstraint!
    @IBOutlet weak var lblSmartScore: UILabel!
    @IBOutlet weak var lblCorrectAnswers: UILabel!
    @IBOutlet weak var lblTimeSpent: UILabel!
    @IBOutlet weak var cns_bubble_center: NSLayoutConstraint!
    @IBOutlet weak var ipad_bubble_center: NSLayoutConstraint!
    @IBOutlet weak var cns_question_container_centerX: NSLayoutConstraint!
    @IBOutlet weak var cns_lblAnswerText_centerX: NSLayoutConstraint!
    @IBOutlet weak var cns_question_container_centerY: NSLayoutConstraint!
    @IBOutlet weak var cns_lblAnswerText_centerY: NSLayoutConstraint!
    @IBOutlet weak var cns_paddingBetweenRow1_2: NSLayoutConstraint!
    @IBOutlet weak var cns_paddingBetweenRow2_3: NSLayoutConstraint!
    @IBOutlet weak var cns_paddingBetweenRow3_4: NSLayoutConstraint!
    @IBOutlet weak var cns_paddingBetweenRow4_5: NSLayoutConstraint!
    @IBOutlet weak var cns_paddingBetweenQues2Row1_2: NSLayoutConstraint!
    @IBOutlet weak var cns_paddingBetweenQues2Row2_3: NSLayoutConstraint!
    @IBOutlet weak var cns_paddingBetweenQues2Row3_4: NSLayoutConstraint!
    @IBOutlet weak var cns_paddingBetweenQues2Row4_5: NSLayoutConstraint!
    @IBOutlet weak var cns_img_operation_sign_width: NSLayoutConstraint!
    @IBOutlet weak var cns_lblCorrectAnswerBtm: NSLayoutConstraint!
    
    @IBOutlet weak var cns_img_level_up_Width: NSLayoutConstraint!
    @IBOutlet weak var img_level_up: UIImageView!
    @IBOutlet weak var cns_AccuracyTop: NSLayoutConstraint!
    @IBOutlet weak var cns_AccuracyHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_RateTop: NSLayoutConstraint!
    @IBOutlet weak var cns_LevelNumberHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_LevelNumberTop: NSLayoutConstraint!
    @IBOutlet weak var lblAccuracy: UILabel!
    @IBOutlet weak var lblRate: UILabel!
    @IBOutlet weak var lblLevelNumber: UILabel!
    @IBOutlet weak var cns_LevelUpHomeLeft: NSLayoutConstraint!
    @IBOutlet weak var cns_LevelUpNextRight: NSLayoutConstraint!
    @IBOutlet weak var cns_LevelUpHomeTop: NSLayoutConstraint!
    @IBOutlet weak var cns_LevelUpHomeBottom: NSLayoutConstraint!
    @IBOutlet weak var cns_LevelUpHomeWidth: NSLayoutConstraint!
    
    @IBOutlet weak var btnLevelUpHome: UIButton!
    @IBOutlet weak var btnLevelUpNext: UIButton!
    
    @IBOutlet weak var img_starMiddle: UIImageView!
    @IBOutlet weak var cns_starMiddleTop: NSLayoutConstraint!
    @IBOutlet weak var cns_starMiddleHeight: NSLayoutConstraint!
    @IBOutlet weak var img_starLeft: UIImageView!
    @IBOutlet weak var cns_starLeftTop: NSLayoutConstraint!
    @IBOutlet weak var cns_starLeftHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_starLeftRight: NSLayoutConstraint!
    @IBOutlet weak var img_starRight: UIImageView!
    @IBOutlet weak var cns_starRightTop: NSLayoutConstraint!
    @IBOutlet weak var cns_starRightHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_starRightLeft: NSLayoutConstraint!
    @IBOutlet weak var img_single_element: UIImageView!
    @IBOutlet weak var img_score_bar_top: UIImageView!
    @IBOutlet weak var cns_scoreTopWidth: NSLayoutConstraint!
    @IBOutlet weak var cns_scoreTopTop: NSLayoutConstraint!
    @IBOutlet weak var img_score_progress: UIImageView!
    @IBOutlet weak var cns_score_progress_top: NSLayoutConstraint!
    @IBOutlet weak var cns_score_progress_height: NSLayoutConstraint!
    @IBOutlet weak var cns_score_progress_width: NSLayoutConstraint!
    @IBOutlet weak var cns_vw_progressbar_height: NSLayoutConstraint!
    @IBOutlet weak var img_operation_sign: UIImageView!
    @IBOutlet weak var vw_elements_no_1: UIView!
    @IBOutlet weak var vw_elements_no_2: UIView!
    @IBOutlet weak var second_ques_top: NSLayoutConstraint!
    @IBOutlet weak var available_ques_height: NSLayoutConstraint!
    @IBOutlet weak var img_operation_top: NSLayoutConstraint!
    
    @IBOutlet weak var lblLevelUPNumber: UILabel!
    @IBOutlet weak var cns_levelUPnumber_bottom: NSLayoutConstraint!
    
    @IBOutlet weak var lblZero1: UILabel!
    @IBOutlet weak var lblZero2: UILabel!
        
    let TotalQues = 15//5//10
    var QueNo = 0
    var num1 = 0
    var num2 = 0
    var currentAnswer = 0
    var GameSign = "+"
    var NoOfUnAnswered = 0
    var NoOfRightAnswers = 0
    var lastRandomNum = 0
    var currentAnswerTag = 1
//    let orangeColor = UIColor(rgb: 0xFF822D)
//    let grayColor = UIColor(rgb: 0x8d8e8d)
    let arAllCorrectAnsText = ["Fantastic","Correct","You got it","Super","Great job","Excellent","Wonderful","That’s right","Brilliant","Awesome","Well done","Terrific"]
    var startTime = Date()
    var smartScoreMultiplierConstant = 0
    var lastThemeNum = 0
    let ColorArr = [UIColor(rgb: 0xFF822D), UIColor(rgb: 0xFF822D), UIColor(rgb: 0xFF822D)] //UIColor(rgb: 0x007cf0)]
    let QuestionColorArr = [UIColor(rgb: 0xFF0D26), UIColor(rgb: 0x5B2A73), UIColor(rgb: 0x5B2A73)]
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    var isLevelChanged = false
    var question_start_point = 0.0
    var available_question_height = 0.0
    var loadedOnce = false
    var arLevel = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.vw_progress.tintColor = UIColor(rgb: 0xFFDC34)
        
        //lblLevelNumber
//        self.lblLevelNumber.layer.borderWidth = 1
//        self.lblLevelNumber.layer.borderColor = UIColor.yellow.cgColor
//        self.lblAccuracy.layer.borderWidth = 1
//        self.lblAccuracy.layer.borderColor = UIColor.yellow.cgColor
            
        self.smartScoreMultiplierConstant = TotalQues * 10              
        self.setDataAccordingToTheme()
                       
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            self.cns_bubble_height.isActive = false
            self.ipad_bubble_height.isActive = true //119:512
            
            self.cns_bubble_width.isActive = false
            self.ipad_bubble_width.isActive = true
            
            self.cns_bubble_center.isActive = false
            self.ipad_bubble_center.constant = UIScreen.main.bounds.size.width * (2/11)//(21/128)
            self.ipad_bubble_center.isActive = true
            
//            self.cns_question_container_centerX.constant = -((UIScreen.main.bounds.size.width * (55/1024)/2))
//            self.cns_lblAnswerText_centerX.constant = self.cns_question_container_centerX.constant
            
            self.cns_lblAnswerText_centerY.constant = -6
            self.cns_question_container_centerY.constant = -6
            
            self.vw_question_container.spacing = 30
            self.vw_answer_container.spacing = 65
            //self.main_bg_view.image = UIImage(named: "bg_math_ipad.png")
            self.lblAnswerView_Height.constant = UIScreen.main.bounds.size.height * (75/683)
            self.question_start_point = UIScreen.main.bounds.size.height * (523/1366)//(286/683)  //(314/802)
            self.answer_vw_btm.constant =  UIScreen.main.bounds.size.height * (60.5/683)//(100/802)//91
            //1064X1728
                
            if(UIScreen.main.bounds.size.height <= 1194 || UIScreen.main.bounds.size.width <= 834)
            {
                for stk_vw in self.vw_elements_no_1.subviews
                {
                    let stack_view = stk_vw as! UIStackView
                    stack_view.spacing = 25
                }
                
                for stk_vw in self.vw_elements_no_2.subviews
                {
                    let stack_view = stk_vw as! UIStackView
                    stack_view.spacing = 25
                }
                
                self.cns_paddingBetweenRow1_2.constant = 25
                self.cns_paddingBetweenRow2_3.constant = 25
                self.cns_paddingBetweenRow3_4.constant = 25
                self.cns_paddingBetweenRow4_5.constant = 25
                self.cns_paddingBetweenQues2Row1_2.constant = 25
                self.cns_paddingBetweenQues2Row2_3.constant = 25
                self.cns_paddingBetweenQues2Row3_4.constant = 25
                self.cns_paddingBetweenQues2Row4_5.constant = 25
                self.cns_img_operation_sign_width.constant = 60
                self.cns_levelUPnumber_bottom.constant = 9
                
                
                if(UIScreen.main.bounds.size.width < 768)
                {
                    print("less than 768")
                    self.ques_img_hgt.constant = UIScreen.main.bounds.size.width *  (5.0/64)//(57/512)
                    self.ques_img_width.constant = UIScreen.main.bounds.size.width *  (5.0/64)//(57/512)
                }
                else
                {
                    self.ques_img_hgt.constant = UIScreen.main.bounds.size.width *  (4.3/64)//(57/512)
                    self.ques_img_width.constant = UIScreen.main.bounds.size.width *  (4.3/64)//(57/512)
                }
                
                for btnvw in self.vw_answer_container.subviews
                {
                    let btn = btnvw as! UIButton
                    btn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 58.0)
                }
                
                for lblvw in self.vw_question_container.subviews
                {
                    let lbl = lblvw as! UILabel
                    lbl.font = UIFont(name: "Helvetica-Bold", size: 72.0)
                }
                
                self.lblAccuracy.font = UIFont(name: "Helvetica-Bold", size: 32.0)
                self.lblRate.font = UIFont(name: "Helvetica-Bold", size: 32.0)
                self.lblTimeSpent.font = UIFont(name: "Helvetica-Bold", size: 32.0)
                self.lblCorrectAnswers.font = UIFont(name: "Helvetica-Bold", size: 32.0)
                self.lblSmartScore.font = UIFont(name: "Helvetica-Bold", size: 32.0)
                self.lbl_answer_text.font = UIFont(name: "Helvetica-Bold", size: 67.0)
                self.lbl_correct_answer.font = UIFont(name: "Helvetica-Bold", size: 20.0)
               // self.lblLevelUPNumber.font = UIFont(name: "Arial-Bold", size: 20.0) //18.0
                print("Level up number ipad font is set here")
                              
                self.btnAnswer1.layer.borderWidth = 5
                self.btnAnswer2.layer.borderWidth = 5
                self.btnAnswer3.layer.borderWidth = 5
            }
            else
            {
                for stk_vw in self.vw_elements_no_1.subviews
                {
                    let stack_view = stk_vw as! UIStackView
                    stack_view.spacing = 32
                }
                
                for stk_vw in self.vw_elements_no_2.subviews
                {
                    let stack_view = stk_vw as! UIStackView
                    stack_view.spacing = 32
                }
                
                self.cns_paddingBetweenRow1_2.constant = 32
                self.cns_paddingBetweenRow2_3.constant = 32
                self.cns_paddingBetweenRow3_4.constant = 32
                self.cns_paddingBetweenRow4_5.constant = 32
                self.cns_paddingBetweenQues2Row1_2.constant = 32
                self.cns_paddingBetweenQues2Row2_3.constant = 32
                self.cns_paddingBetweenQues2Row3_4.constant = 32
                self.cns_paddingBetweenQues2Row4_5.constant = 32
                self.cns_img_operation_sign_width.constant = 72
                self.cns_levelUPnumber_bottom.constant = 15
                
                self.ques_img_hgt.constant = UIScreen.main.bounds.size.width *  (4.3/64)//(57/512)
                self.ques_img_width.constant = UIScreen.main.bounds.size.width *  (4.3/64)//(57/512)
                
                self.cns_lblCorrectAnswerBtm.constant = 12 //15
                self.btnAnswer1.layer.borderWidth = 6
                self.btnAnswer2.layer.borderWidth = 6
                self.btnAnswer3.layer.borderWidth = 6
            }
        }
        else
        {
            if(UIScreen.main.bounds.size.height <= 736) //667
            {
                self.question_start_point = UIScreen.main.bounds.size.height * (45/115)
                self.ques_img_hgt.constant = UIScreen.main.bounds.size.width * (19.3/225)//(46/393)
                self.ques_img_width.constant = UIScreen.main.bounds.size.width * (19.3/225) //(46/393)
                self.answer_vw_btm.constant =  UIScreen.main.bounds.size.height * (14/113)
                
                self.lblAccuracy.font = UIFont(name: "Helvetica-Bold", size: 20.0)
                self.lblRate.font = UIFont(name: "Helvetica-Bold", size: 20.0)
                self.lblTimeSpent.font = UIFont(name: "Helvetica-Bold", size: 20.0)
                self.lblCorrectAnswers.font = UIFont(name: "Helvetica-Bold", size: 20.0)
                self.lblSmartScore.font = UIFont(name: "Helvetica-Bold", size: 20.0)
                self.lblLevelUPNumber.font = UIFont(name: "Arial-Bold", size: 12.0)
                print("Level up number font is set here")
            }
            else
            {
                self.question_start_point = UIScreen.main.bounds.size.height * (46/115) //(29/69)//(45/113)
                self.ques_img_hgt.constant = UIScreen.main.bounds.size.width * (40/375) //(7/45)//(53/393)
                self.ques_img_width.constant = UIScreen.main.bounds.size.width * (40/375)//(11/75) //(7/45)//(53/393)
                self.answer_vw_btm.constant =  UIScreen.main.bounds.size.height * (30/226)//(100/802)//91
            }
            
            self.btnAnswer1.layer.borderWidth = 3
            self.btnAnswer2.layer.borderWidth = 3
            self.btnAnswer3.layer.borderWidth = 3
        }
        
        if(self.GameSign == "%")
        {
            self.lblGameSign.font = UIFont(name: "AvenirNext-Bold", size:  (UIDevice.current.userInterfaceIdiom == .pad) ? 87.0 : 57.0)
            self.lblGameSign.text = "\u{066A}"
            //"٪"
        }
        else
        {
            self.lblGameSign.font = UIFont(name: "AvenirNext-Bold", size: (UIDevice.current.userInterfaceIdiom == .pad) ? 87.0 : 50.0)
            //UIFont(name: "Avenir-Next-Bold", size: 50.0)
            self.lblGameSign.text = self.GameSign
        }
        
        self.img_operation_sign.image = UIImage(named: "calculation_\(self.GameSign)")
      //  self.generateNextQuestion()
    }
    
    func getThemeNum() -> Int
    {
        var randomNum = Int.random(in: 1...3)
        while randomNum == self.lastThemeNum {
            randomNum = Int.random(in: 1...3)
        }
        return randomNum
    }
    
    func setDataAccordingToTheme()
    {
        
        print("new data is set from here....")
        let themeNum = self.getThemeNum()
        self.lastThemeNum = themeNum
        self.main_bg_view.image = UIImage(named: "\(themeNum)_bg_math")
        if(themeNum == 2)
        {
            print("Diff bubble for classroom")
            self.bubble_view.image = UIImage(named: "2_bubble_question")
        }
        else
        {
            self.bubble_view.image = UIImage(named: "bubble_question")
        }
        //UIImage(named: "\(themeNum)_bubble_question")
        
        self.lbl_answer_text.textColor = UIColor.white //self.ColorArr[self.lastThemeNum - 1]
        self.btnAnswer1.setTitleColor(self.ColorArr[self.lastThemeNum - 1], for: .normal)
        self.btnAnswer2.setTitleColor(self.ColorArr[self.lastThemeNum - 1], for: .normal)
        self.btnAnswer3.setTitleColor(self.ColorArr[self.lastThemeNum - 1], for: .normal)
        
        for vw in self.vw_question_container.subviews
        {
            let lbl = vw as! UILabel
            lbl.textColor = self.QuestionColorArr[self.lastThemeNum - 1]
        }
        
      //  MusicPlayer.shared.stopBackgroundMusic()
        if(MusicPlayer.shared.isMusicPlaying)
        {
            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName : "bg_theme_\(themeNum)")
        }
    }
    
    override func viewDidLayoutSubviews() {
        
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (319/512)//(71/75)
                        
            let btm = UIScreen.main.bounds.size.height *  (92/419)//(187/802)
            self.img_bubble_top.constant = btm - self.bubble_view.frame.size.height
        
        }
        else
        {
            if(UIScreen.main.bounds.size.height <= 736) //667
            {
                self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (65/75) //(186/225) //(65/75)
            }
            else
            {
                self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (71/75) //(212/225)//(71/75)
            }
                    
            let btm = UIScreen.main.bounds.size.height *  (132/565)//(187/802)
            self.img_bubble_top.constant = btm - self.bubble_view.frame.size.height
                //UIScreen.main.bounds.size.height *  (60/697)
            //btm - self.bubble_view.frame.size.height
          
        }
        
        if(self.GameSign == "%")
        {
            self.lblGameSign.font = UIFont(name: "AvenirNext-Bold", size:  (UIDevice.current.userInterfaceIdiom == .pad) ? 87.0 : 57.0)
            self.lblGameSign.text = "\u{066A}"
            //"٪"
        }
        else
        {
            self.lblGameSign.font = UIFont(name: "AvenirNext-Bold", size: (UIDevice.current.userInterfaceIdiom == .pad) ? 87.0 : 50.0)
            //Helvetica-Bold
            //UIFont(name: "Avenir-Next-Bold", size: 50.0)
            self.lblGameSign.text = self.GameSign
        }
        
        let numberOuterMargin = (self.img_level_up.frame.size.height *  (18.5/465)) //(31/864))
        self.cns_LevelNumberTop.constant = (self.img_level_up.frame.size.height * (50/372)) + numberOuterMargin //(83/465))//(59/372))
       // self.cns_LevelNumberTop.constant = (self.img_level_up.frame.size.height *  (85/576)) + numberOuterMargin//(53/288)//(25/144)//127/864
        //self.cns_LevelNumberHeight.constant = (self.img_level_up.frame.size.height * (41/216)) - (numberOuterMargin*2)//(103/864)//(11/108)//(5/36) //(55/288)
        self.cns_LevelNumberHeight.constant = (self.img_level_up.frame.size.height * (32.5/186)) -  (numberOuterMargin * 2) //(3/31))//(25/186))
        
        
        self.cns_starMiddleTop.constant = UIScreen.main.bounds.size.height * (51/113) //(53/113)
        self.cns_starLeftTop.constant = UIScreen.main.bounds.size.height * (109/226)//(1/2)
        self.cns_starRightTop.constant = UIScreen.main.bounds.size.height *  (541/1130) //(56/113)
        self.cns_starLeftRight.constant = -(UIScreen.main.bounds.size.width * (13/1125))
        self.cns_starRightLeft.constant = -(UIScreen.main.bounds.size.width * (11/1125))
        
        self.cns_vwSmartScoreTop.constant = self.img_level_up.frame.size.height *  (74/157)//(39/113)  //(79/226)
        self.cns_vwCorrectAnswerTop.constant = self.img_level_up.frame.size.height * (227/314)//(135/226)
        self.cns_vwTimeSpentTop.constant =  self.img_level_up.frame.size.height * (565/942) //UIScreen.main.bounds.size.height / 2
        
        self.cns_AccuracyHeight.constant = self.img_level_up.frame.size.height * (25/471)//(25/471)//(33/628)//(5/93)// (25/432)
        self.cns_AccuracyTop.constant = self.img_level_up.frame.size.height *  (287/471)//(39/62)//(5/8) //(269/432)// (27/226)
        self.cns_RateTop.constant = self.img_level_up.frame.size.height *  (340/471)//(461/620)//(323/432)
        self.cns_LevelUpHomeTop.constant = self.img_level_up.frame.size.height *  (11/628)//(7/155)
        self.cns_LevelUpHomeBottom.constant = -(self.img_level_up.frame.size.height *  (1/12))//(3/310))
        self.cns_LevelUpHomeWidth.constant = self.img_level_up.frame.size.height * (36/157)//(48/125)
        
        self.cns_LevelUpHomeLeft.constant = self.img_level_up.frame.size.width * (4/125)//(99/530)
            //((self.img_level_up.frame.size.width/2) - self.btnLevelUpHome.frame.size.width) - (self.img_level_up.frame.size.width *  (11/212))
        self.cns_LevelUpNextRight.constant = -self.cns_LevelUpHomeLeft.constant - 2
            //(self.img_level_up.frame.size.width/2) + (self.img_level_up.frame.size.width *  (11/212))
        
//        self.cns_starMiddleTop.constant = UIScreen.main.bounds.size.height * (169/372) //(53/113)
//        self.cns_starLeftTop.constant = UIScreen.main.bounds.size.height * (61/124)//(1/2)
//        self.cns_starRightTop.constant = UIScreen.main.bounds.size.height *  (181/372) //(56/113)
        self.cns_starMiddleHeight.constant  = UIScreen.main.bounds.size.height * (47/565)
        self.cns_starLeftHeight.constant = UIScreen.main.bounds.size.height * (15/226)
        self.cns_starRightHeight.constant = UIScreen.main.bounds.size.height * (149/2260)
        
        self.cns_scoreTopTop.constant = self.img_level_up.frame.size.height * (94.5/314)
        self.cns_scoreTopWidth.constant = self.img_level_up.frame.size.width * (140/257)
        self.cns_score_progress_top.constant = self.img_score_bar_top.frame.size.height/2
        self.cns_score_progress_width.constant = self.img_score_bar_top.frame.size.width * (378/583)
        self.cns_score_progress_height.constant = self.img_score_bar_top.frame.size.height * (14/61)
        //self.cns_score_progress_width.constant * (123/1024)
        //self.img_score_bar_top.frame.size.height * (14/61)
        self.cns_vw_progressbar_height.constant = self.cns_score_progress_height.constant * (99/123)
        
        self.btnAnswer1.layer.cornerRadius = self.btnAnswer1.frame.size.width/2
        self.btnAnswer2.layer.cornerRadius = self.btnAnswer1.frame.size.width/2
        self.btnAnswer3.layer.cornerRadius = self.btnAnswer1.frame.size.width/2
        
        if(self.loadedOnce == false)
        {
            self.loadedOnce = true
            self.available_question_height = self.lbl_correct_answer.frame.origin.y - 13.0 - self.question_start_point
            self.generateNextQuestion()
        }
        //self.available_ques_height.constant = self.available_question_height
        //self.lbl_correct_answer.frame.origin.y - 13.0 - self.question_start_point
        //self.vw_elements_no_1.frame.size.height
        
    }
        
    func generateNextQuestion()
    {
        if(QueNo < TotalQues)
        {
            var maxQuesNumber1 = 15
            var maxQuesNumber2 = 15
            
            if(self.GameSign == "%")
            {
                if((self.arLevel) <= 5)
                {
                    maxQuesNumber1 = 10
                    maxQuesNumber2 = 5
                }
                else if((self.arLevel) <= 10)
                {
                    
                    maxQuesNumber1 = 10      //9
                    maxQuesNumber2 = 10      //5
                    
                }
                else if((self.arLevel) <= 20)
                {
                    maxQuesNumber1 = 15
                    maxQuesNumber2 = 10
                }
//                else if((self.arLevel) > 25 && (self.arLevel) <= 35)
//                {
//                   let pos = Int.random(in: 1...2)
//                   if(pos == 1 || self.GameSign == "-" || self.GameSign == "%")
//                   {
//                       maxQuesNumber2 = 9
//                   }
//                   else
//                   {
//                       maxQuesNumber1 = 9
//                   }
//                }
            }
            else
            {
                if((self.arLevel) <= 5)
                {
                    maxQuesNumber1 = 5
                    maxQuesNumber2 = 5
                }
                else if((self.arLevel) <= 15)
                {
                    let pos = Int.random(in: 1...2)
                    if(pos == 1 || self.GameSign == "-")
                    {
                        maxQuesNumber1 = 9
                        maxQuesNumber2 = 5
                    }
                    else
                    {
                        maxQuesNumber1 = 5
                        maxQuesNumber2 = 9
                    }
                }
                else if((self.arLevel) <= 25)
                {
                    maxQuesNumber1 = 9
                    maxQuesNumber2 = 9
                }
                else if((self.arLevel) > 25 && (self.arLevel) <= 35)
                {
                   let pos = Int.random(in: 1...2)
                   if(pos == 1 || self.GameSign == "-")
                   {
                       maxQuesNumber2 = 9
                   }
                   else
                   {
                       maxQuesNumber1 = 9
                   }
                }
            }
            
            
            if(self.GameSign == "%")
            {
                self.num1 = Int.random(in: 1...maxQuesNumber1)
                self.num2 = Int.random(in: 1...maxQuesNumber2)
            }
            else
            {
                if(self.GameSign == "-")
                {
                    self.num1 = Int.random(in: 1...maxQuesNumber1)
                }
                else
                {
                    self.num1 = Int.random(in: 0...maxQuesNumber1)
                }
                
                //self.num1 = Int.random(in: 0...maxQuesNumber1)
                self.num2 = Int.random(in: 0...maxQuesNumber2)
                
                if(self.num1 == 0 && self.num2 == 0)
                {
                    self.num1 = Int.random(in: 1...maxQuesNumber1)
                }
            }
            
//            self.num1 = 15
//            self.num2 = 15
            
            var randomNum = Int.random(in: 1...10)
            while randomNum == self.lastRandomNum {
                randomNum = Int.random(in: 1...10)
            }
            //randomNum = 7
            self.lastRandomNum = randomNum
            
            self.btnAnswer1.layer.borderColor = self.ColorArr[self.lastThemeNum - 1].cgColor
            self.btnAnswer2.layer.borderColor = self.ColorArr[self.lastThemeNum - 1].cgColor
            self.btnAnswer3.layer.borderColor = self.ColorArr[self.lastThemeNum - 1].cgColor
                        
                        
            if(self.GameSign == "-")
            {
                while self.num2 > self.num1 {
                    self.num2 = Int.random(in: 0...maxQuesNumber2)
                }
            }
            else if(self.GameSign == "%")
            {
                while self.num2 > self.num1 || (self.num1%self.num2 > 0) {
                    self.num2 = Int.random(in: 1...maxQuesNumber2)
                }
            }

            self.lblNumber1.text = "\(self.num1)"
            self.lblNumber2.text = "\(self.num2)"
            
            let img_element = UIImage(named: "\(self.lastThemeNum)_icon_object_\(randomNum)")
            print("image dimension is \(img_element?.size.width) and \(img_element?.size.height)")
            
            self.ques_img_hgt.constant = ((img_element?.size.height)! * self.ques_img_width.constant)/(img_element?.size.width)!
            
            let rows_1 = (self.num1 % 3 == 0) ?  Int(self.num1/3) : Int(self.num1/3) + 1
            let rows_2 = (self.num2 % 3 == 0) ?  Int(self.num2/3) : Int(self.num2/3) + 1
            
            print("row 1 count is \(rows_1) and row 2 count is \(rows_2)")
            
            let total_row_1_height = (rows_1 == 1) ? (self.ques_img_hgt.constant * CGFloat(rows_1)) : ((self.ques_img_hgt.constant * CGFloat(rows_1)) + (self.cns_paddingBetweenRow1_2.constant * CGFloat(rows_1 - 1)))
            let total_row_2_height = (rows_2 == 1) ? (self.ques_img_hgt.constant * CGFloat(rows_2)) : ((self.ques_img_hgt.constant * CGFloat(rows_2)) + (self.cns_paddingBetweenRow1_2.constant * CGFloat(rows_2 - 1)))
            
            print("total row 1 height is \(total_row_1_height) and row 2 height is \(total_row_2_height)")
            
            self.first_ques_top.constant = self.question_start_point + ((self.available_question_height - total_row_1_height)/2)
            self.second_ques_top.constant = self.question_start_point + ((self.available_question_height - total_row_2_height)/2)
            
            self.img_operation_top.constant = self.first_ques_top.constant + (total_row_1_height/2) - (self.img_operation_sign.frame.size.height/2)
            
            print("available height is \(self.available_question_height) and starting is \(self.question_start_point) and row 1 top is \(first_ques_top.constant) and row 2 top is \(second_ques_top.constant)")
            
//            if(self.num1 <= 5)
//            {
//                self.second_row_height.constant = 0
//                self.cns_paddingBetweenRow2_3.constant = 0
//                self.first_que_row2.isHidden = true
////                print("num 1 is less than 5")
//            }
//            else
//            {
//                self.second_row_height.constant = self.ques_img_hgt.constant
//                self.cns_paddingBetweenRow2_3.constant = (UIDevice.current.userInterfaceIdiom == .pad) ? ((UIScreen.main.bounds.size.height <= 1194 || UIScreen.main.bounds.size.width <= 834) ? 24 : 28) : 16
//                self.first_que_row2.isHidden = false
////                print("num 1 is greater than 5")
//            }
                        
            self.lblZero1.isHidden = (self.num1 == 0) ? false : true
            self.lblZero2.isHidden = (self.num2 == 0) ? false : true
            
            for stk_vw in self.vw_elements_no_1.subviews
            {
               // let stack_View = stk_vw as! UIStackView
                for img in stk_vw.subviews
                {
                    let iElement = img as! UIImageView
                    //img.isHidden = (img.tag <= self.num1) ? false : true
                    if(self.num1 == 1)
                    {
                        if(img.tag == 2)
                        {
                            iElement.image = img_element
                        }
                        else
                        {
                            iElement.image = UIImage(named: "")
                        }
                    }
                    else
                    {
                        if(img.tag <= self.num1)
                        {
                            iElement.image = img_element //UIImage(named: "\(self.lastThemeNum)_icon_object_\(randomNum)")
                        }
                        else
                        {
                            iElement.image = UIImage(named: "")
                        }
                    }
                }
            }

            for stk_vw in self.vw_elements_no_2.subviews
            {
               // let stack_View = stk_vw as! UIStackView
                for img in stk_vw.subviews
                {
                    let iElement = img as! UIImageView
                    //img.isHidden = (img.tag <= self.num1) ? false : true
                    if(self.num2 == 1)
                    {
                        if(img.tag == 2)
                        {
                            iElement.image = img_element
                        }
                        else
                        {
                            iElement.image = UIImage(named: "")
                        }
                    }
                    else
                    {
                        if(img.tag <= self.num2)
                        {
                            iElement.image = img_element //UIImage(named: "\(self.lastThemeNum)_icon_object_\(randomNum)")
                        }
                        else
                        {
                            iElement.image = UIImage(named: "")
                        }
                    }
                }
            }


//            for img in self.first_que_row2.subviews
//            {
//                let iElement = img as! UIImageView
//                //img.isHidden = (img.tag <= self.num1) ? false : true
//                if(img.tag <= self.num1)
//                {
//                    iElement.image = UIImage(named: "\(self.lastThemeNum)_icon_object_\(randomNum)")
//                }
//                else
//                {
//                    iElement.image = UIImage(named: "")
//                }
//            }

//            for img in self.second_que_row1.subviews
//            {
//                let iElement = img as! UIImageView
//                //img.isHidden = (img.tag <= self.num2) ? false : true
//                if(img.tag <= self.num2)
//                {
//                    iElement.imag00.e = UIImage(named: "\(self.lastThemeNum)_icon_object_\(randomNum)")
//                }
//                else
//                {
//                    iElement.image = UIImage(named: "")
//                }
//            }
//
//            for img in self.second_que_row2.subviews
//            {
//                let iElement = img as! UIImageView
//                //img.isHidden = (img.tag <= self.num2) ? false : true
//                if(img.tag <= self.num2)
//                {
//                    iElement.image = UIImage(named: "\(self.lastThemeNum)_icon_object_\(randomNum)")
//                }
//                else
//                {
//                    iElement.image = UIImage(named: "")
//                }
//            }

            var startRange = 1
            var endRange = 15
            if(self.GameSign == "+")
            {
                self.currentAnswer = self.num1+self.num2
                //startRange = 2
                endRange = 30
            }
            else if(self.GameSign == "-")
            {
                self.currentAnswer = self.num1-self.num2
                //startRange = 0
            }
            else if(self.GameSign == "X")
            {
                self.currentAnswer = self.num1*self.num2
                startRange = self.currentAnswer - 20
                if(startRange < 1)
                {
                    startRange = 1
                }
                endRange = self.currentAnswer + 20
                if(endRange > 250)
                {
                    endRange = 250
                }
                //endRange = 100
            }
            else
            {
                self.currentAnswer = self.num1/self.num2
            }
            
            let moreRandom = Int.random(in: 1...3)
            
            if(moreRandom == 1)
            {
                startRange = self.currentAnswer - 5
                endRange = self.currentAnswer + 5
            }
            else if(moreRandom == 2)
            {
                startRange = self.currentAnswer - 5
                if(self.currentAnswer - 1 > 1)//////////////////////   >  0
                {
                    endRange = self.currentAnswer - 1
                }
                else
                {
                    endRange = 4
                }
            }
            else
            {
                startRange = self.currentAnswer + 1
                endRange = self.currentAnswer + 5
            }
           
            if(self.GameSign == "-" || self.GameSign == "X")
            {
                if(startRange < 0)
                {
                    startRange = 0
                }
            }
            else
            {
                if(startRange < 1)
                {
                    startRange = 1
                }
            }
                
            var otherOption1 = Int.random(in: startRange...endRange)
            var otherOption2 = Int.random(in: startRange...endRange)
            
            while otherOption1 == self.currentAnswer {
                    otherOption1 = Int.random(in: startRange...endRange)
                    print("other option 1 is \(otherOption1) 2 is \(otherOption2) correct is \(self.currentAnswer) num1 is \(self.num1) and num2 is \(self.num2) startRange is \(startRange) and endRange is \(endRange)")
            }

            while otherOption2 == self.currentAnswer || otherOption2 == otherOption1 {
                    otherOption2 = Int.random(in: startRange...endRange)
                print("other option 2 is \(otherOption2) 1 is \(otherOption1) correct is \(self.currentAnswer) num1 is \(self.num1) and num2 is \(self.num2) startRange is \(startRange) and endRange is \(endRange)")
            }
            
            let correctAnswerPos = Int.random(in: 0...2)
            if(correctAnswerPos == 0)
            {
                self.currentAnswerTag = 1
                self.btnAnswer1.setTitle("\(self.currentAnswer)", for: .normal)
                self.btnAnswer2.setTitle("\(otherOption1)", for: .normal)
                self.btnAnswer3.setTitle("\(otherOption2)", for: .normal)
            }
            else if(correctAnswerPos == 1)
            {
                self.currentAnswerTag = 2
                self.btnAnswer2.setTitle("\(self.currentAnswer)", for: .normal)
                self.btnAnswer1.setTitle("\(otherOption1)", for: .normal)
                self.btnAnswer3.setTitle("\(otherOption2)", for: .normal)
            }
            else
            {
                self.currentAnswerTag = 3
                self.btnAnswer3.setTitle("\(self.currentAnswer)", for: .normal)
                self.btnAnswer1.setTitle("\(otherOption1)", for: .normal)
                self.btnAnswer2.setTitle("\(otherOption2)", for: .normal)
            }
            QueNo = QueNo + 1
        }
        else
        {
            self.GameCompleted()
        }
    }
    
    @IBAction func btnAnswerClicked(_ sender: Any)
    {
        if(MusicPlayer.shared.isSoundOn == true)
        {
            MusicPlayer.shared.playSoundEffect(soundEffect : "click")
        }
        
        let btn = sender as! UIButton
        self.view.isUserInteractionEnabled = false
        
        self.lbl_answer_text.isHidden = false
        self.vw_question_container.isHidden = true
        self.bubble_view.image = UIImage(named: "\(self.lastThemeNum)_bubble_answer")
        self.lbl_correct_answer.isHidden = false
        
        if(self.currentAnswerTag == 1)
        {
            self.cns_centerToAns1.isActive = true
            self.cns_centerToAns2.isActive = false
            self.cns_centerToAns3.isActive = false
        }
        else if(self.currentAnswerTag == 2)
        {
            self.cns_centerToAns2.isActive = true
            self.cns_centerToAns1.isActive = false
            self.cns_centerToAns3.isActive = false
        }
        else if(self.currentAnswerTag == 3)
        {
            self.cns_centerToAns3.isActive = true
            self.cns_centerToAns1.isActive = false
            self.cns_centerToAns2.isActive = false
        }
        
        if(btn.title(for: .normal) == "\(self.currentAnswer)")
        {
            DispatchQueue.main.asyncAfter(deadline: .now() +  0.1) {
            if(MusicPlayer.shared.isSoundOn == true)
            {
                MusicPlayer.shared.playSoundEffect(soundEffect : "correct_answer")
            }
            }
            self.NoOfRightAnswers = self.NoOfRightAnswers + 1
            let randomNum = Int.random(in: 0...self.arAllCorrectAnsText.count-1)
            self.lbl_answer_text.text = self.arAllCorrectAnsText[randomNum]
            btn.backgroundColor = self.ColorArr[self.lastThemeNum - 1]
            btn.setTitleColor(.white, for: .normal)
            
            DispatchQueue.main.asyncAfter(deadline: .now() +  1.0) {
                
               self.view.isUserInteractionEnabled = true
               btn.backgroundColor = UIColor.white
               btn.setTitleColor(self.ColorArr[self.lastThemeNum - 1], for: .normal)
               self.AnswerCompleted()
            }
        }
        else
        {
            DispatchQueue.main.asyncAfter(deadline: .now() +  0.1) {
            if(MusicPlayer.shared.isSoundOn == true)
            {
                MusicPlayer.shared.playSoundEffect(soundEffect : "wrong_answer")
            }
            }
            btn.layer.borderColor = UIColor.lightGray.cgColor
            btn.setTitleColor(.lightGray, for: .normal)
            self.lbl_answer_text.text = "Oops"
            
            let butn = self.vw_answer_container.viewWithTag(self.currentAnswerTag) as! UIButton
            
//            for subvw in self.vw_answer_container.arrangedSubviews
//            {
//                let butn = subvw as! UIButton
//                if(btn.title(for: .normal) == String(self.currentAnswer))
//                {
                butn.backgroundColor = self.ColorArr[self.lastThemeNum - 1]
                butn.setTitleColor(.white, for: .normal)
//                }
//            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() +  1.0) {
                
                self.view.isUserInteractionEnabled = true
                btn.layer.borderColor = self.ColorArr[self.lastThemeNum - 1].cgColor
                btn.setTitleColor(self.ColorArr[self.lastThemeNum - 1], for: .normal)
                butn.backgroundColor = UIColor.white
                butn.setTitleColor(self.ColorArr[self.lastThemeNum - 1], for: .normal)
                self.AnswerCompleted()
            }
        }
    }
    
    func AnswerCompleted()
    {
        if(self.lastThemeNum == 2)
        {
            print("Diff bubble for classroom")
            self.bubble_view.image = UIImage(named: "2_bubble_question")
        }
        else
        {
            self.bubble_view.image = UIImage(named: "bubble_question")
        }
        //UIImage(named: "\(self.lastThemeNum)_bubble_question")
        self.lbl_answer_text.isHidden = true
        self.vw_question_container.isHidden = false
        self.lbl_correct_answer.isHidden = true
        
       if(self.QueNo < self.TotalQues)
       {
           self.generateNextQuestion()
       }
       else
       {
           self.GameCompleted()
       }
    }
    
    func GameCompleted()
    {
        self.lblZero1.isHidden = true
        self.lblZero2.isHidden = true
        self.vw_elements_no_1.isHidden = true
        self.vw_elements_no_2.isHidden = true
//        self.first_que_row1.isHidden = true
//        self.first_que_row2.isHidden = true
//        self.second_que_row1.isHidden = true
//        self.second_que_row2.isHidden = true
        self.vw_answer_container.isHidden = true
        self.bubble_view.isHidden = true
            //= UIImage(named: "\(self.lastThemeNum)_bubble_level")
        self.img_level_up.isHidden = false
        self.btnLevelUpHome.isHidden = false
        self.btnLevelUpNext.isHidden = false
        self.img_level_up.image = UIImage(named: "img_scoreBoard")
        self.lbl_answer_text.isHidden = true //false
        self.vw_question_container.isHidden = true
        
        if(UIDevice.current.userInterfaceIdiom == .pad && (UIScreen.main.bounds.size.height <= 1194 || UIScreen.main.bounds.size.width <= 834))
        {
            let mutableSt = NSMutableAttributedString(string: "Level \(self.arLevel)", attributes: [NSAttributedString.Key.font : UIFont(name: "Helvetica-Bold", size: 88.0)!])
            mutableSt.addAttributes([NSAttributedString.Key.font:UIFont(name: "Helvetica-Bold", size: 33.0)!,.baselineOffset:14], range: NSRange(location: 0, length: 5))
            self.lbl_answer_text.attributedText = mutableSt
        }
        else
        {
            let mutableSt = NSMutableAttributedString(string: "Level \(self.arLevel)", attributes: [NSAttributedString.Key.font : UIFont(name: "Helvetica-Bold", size: (UIDevice.current.userInterfaceIdiom == .pad) ? 108.0 : 55.0)!])
            mutableSt.addAttributes([NSAttributedString.Key.font:UIFont(name: "Helvetica-Bold", size: (UIDevice.current.userInterfaceIdiom == .pad) ? 45.0 : 28.0)!,.baselineOffset:(UIDevice.current.userInterfaceIdiom == .pad) ? 16 : 8], range: NSRange(location: 0, length: 5))
            //self.lbl_answer_text.text = "Level 8888"
            self.lbl_answer_text.attributedText = mutableSt
        }
        self.lbl_answer_text.textColor = UIColor.white
        self.lblCorrectAnswers.text = "\(self.NoOfRightAnswers)/\(self.TotalQues)"
        
        let timeInSec = NSInteger(Date().timeIntervalSince(self.startTime))
        
        //let min = (timeInSec/60) % 60
        //let sec = (timeInSec % 60)
                
        self.lblTimeSpent.text = NSString(format: "%0.2d:%0.2d", ((timeInSec/60) % 60),(timeInSec % 60)) as String
            //"\((timeInSec/60) % 60):\((timeInSec % 60))"
        print("constant is \(self.smartScoreMultiplierConstant) time is \(timeInSec) and correct answer is \(self.NoOfRightAnswers)")
        let smartScore = Int(CGFloat(CGFloat(self.NoOfRightAnswers)/CGFloat(timeInSec)) * CGFloat(self.smartScoreMultiplierConstant))
        self.lblSmartScore.text = "\(smartScore)"
        
        self.lblLevelUPNumber.text = "LEVEL \(self.arLevel)"
                
        self.lblLevelUPNumber.isHidden = false
        self.img_score_bar_top.isHidden = false
        self.img_score_progress.isHidden = false
        self.vw_progress.isHidden = false
        self.lblTimeSpent.isHidden = false
        self.lblSmartScore.isHidden = false
        self.lblCorrectAnswers.isHidden = false
        self.lblRate.isHidden = true
        self.lblAccuracy.isHidden = true
        
        self.createData(smartScore: smartScore, corrctAnswers: self.NoOfRightAnswers, timeSpent: timeInSec)
        
        appDelegate?.arSmartScore.append(smartScore)
        appDelegate?.arCorrectAnswers.append(self.NoOfRightAnswers)
        appDelegate?.arTotalQuestions.append(self.TotalQues)
        appDelegate?.arTimeSpent.append(timeInSec)
        
        var totalScore = appDelegate?.arSmartScore.reduce(0, +)
        var level = 0
        
        if(self.arLevel < 5)
        {
            level = (totalScore! / appDelegate!.constlevelChangeRange) + 1
        }
        else if(self.arLevel < 10)
        {
            totalScore = totalScore! - (appDelegate!.constlevelChangeRange * 5)
            level = 5 + (totalScore! / (appDelegate!.constlevelChangeRange + 30)) + 1
        }
        else if(self.arLevel < 15)
        {
            totalScore = totalScore! - (appDelegate!.constlevelChangeRange * 5)
            totalScore = totalScore! - ((appDelegate!.constlevelChangeRange + 30) * 5)
            level = 10 + (totalScore! / (appDelegate!.constlevelChangeRange + 50)) + 1
        }
        else
        {
            totalScore = totalScore! - (appDelegate!.constlevelChangeRange * 5)
            totalScore = totalScore! - ((appDelegate!.constlevelChangeRange + 30) * 5)
            totalScore = totalScore! - ((appDelegate!.constlevelChangeRange + 50) * 5)
            level = 15 + (totalScore! / (appDelegate!.constlevelChangeRange + 70)) + 1
        }
        
        var progress = 0.0
        
        //print("total score is \(totalScore) and level is \(level)")
        if(level > 0 && level != self.arLevel)
        {
            self.isLevelChanged = true
            progress = 1.0
//            let alert = UIAlertController(title: "Congratulations!!", message: "You have finished level \(appDelegate!.arLevel). Click on NEXT to start new game with level \(level)", preferredStyle: .alert)
            
            switch self.GameSign {
            case "+":
                UserDefaults.standard.setValue(level, forKey: "AdditionGameLevel")
            case "-":
                UserDefaults.standard.setValue(level, forKey: "SubtractionGameLevel")
            case "X":
                UserDefaults.standard.setValue(level, forKey: "MultiplicationGameLevel")
            case "%":
                UserDefaults.standard.setValue(level, forKey: "DivionGameLevel")
            default:
                break
            }
                       
            UserDefaults.standard.synchronize()
            self.arLevel = level
            print("levle is changed and new level is \(level)")
                    
        }
        else
        {
            if(self.arLevel < 6)
            {
                let extra = (totalScore! % appDelegate!.constlevelChangeRange)
                progress = Double(CGFloat(extra)/CGFloat(appDelegate!.constlevelChangeRange))
                print("and extra is \(extra)")
            }
            else if(self.arLevel < 11)
            {
                let extra = (totalScore! % (appDelegate!.constlevelChangeRange + 30))
                progress = Double(CGFloat(extra)/CGFloat((appDelegate!.constlevelChangeRange + 30)))
                print("and extra is \(extra)")
            }
            else if(self.arLevel < 16)
            {
                let extra = (totalScore! % (appDelegate!.constlevelChangeRange + 50))
                progress = Double(CGFloat(extra)/CGFloat((appDelegate!.constlevelChangeRange + 50)))
                print("and extra is \(extra)")
            }
            else
            {
                let extra = (totalScore! % (appDelegate!.constlevelChangeRange + 70))
                progress = Double(CGFloat(extra)/CGFloat((appDelegate!.constlevelChangeRange + 70)))
                print("and extra is \(extra)")
            }
           
            
        }
        print("progress value is ........ \(progress) and total is \(totalScore)")
        self.vw_progress.progress = Float(progress)
        //(level % 2 == 0) ? 0.3 : 0.7
            //Float(CGFloat(self.QueNo)/10.0)
                
    }
        
    @IBAction func btnBackToMenuClicked(_ sender: Any)
    {
        if(self.isLevelChanged == true)
        {
            self.setForLevelChangedTrue()
            return
        }
        if(MusicPlayer.shared.isMusicPlaying)
        {
            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName : "bg_music")
        }
        self.navigationController?.popToViewController((self.navigationController?.viewControllers[1])!, animated: true)
       //popToRootViewController(animated: true)
    }
    
    func setForLevelChangedTrue()
    {
        self.isLevelChanged = false
        self.lblTimeSpent.isHidden = true
        self.lblSmartScore.isHidden = true
        self.lblCorrectAnswers.isHidden = true
        self.lblLevelUPNumber.isHidden = true
        self.img_score_bar_top.isHidden = true
        self.img_score_progress.isHidden = true
        self.vw_progress.isHidden = true
        
       // self.main_bg_view.image = UIImage(named: "\(self.lastThemeNum)_bg_plain_math")
                  
        self.img_level_up.image = UIImage(named: "img_levelUp")
        //self.img_level_up.isHidden = false
        //self.bubble_view.isHidden = true
        self.lblAccuracy.isHidden = false
        self.lblRate.isHidden = false
        self.img_starMiddle.isHidden = false
        self.img_starLeft.isHidden = false
        self.img_starRight.isHidden = false
        self.lblLevelNumber.isHidden = false
        self.lblLevelNumber.text = "\(self.arLevel - 1)"
        print("Total question is \(appDelegate?.arTotalQuestions.reduce(0, +)) and total correct is \(appDelegate?.arCorrectAnswers.reduce(0, +)) and total spent sec is \(appDelegate?.arTimeSpent.reduce(0, +))")
        let accuracy = ((appDelegate?.arCorrectAnswers.reduce(0, +))! * 100 / (appDelegate?.arTotalQuestions.reduce(0, +))!)
        self.lblAccuracy.text = "\(accuracy)%"
        let timeSpent = appDelegate?.arTimeSpent.reduce(0, +)
       // let min = Int(NSString(format: "%0.2d", ((timeSpent!/60) % 60)) as String)
        let min = CGFloat((CGFloat(timeSpent!)/60.0))
        self.lblRate.text = "\(Int(CGFloat((appDelegate?.arTotalQuestions.reduce(0, +))!)/min))/min"
        
        if(accuracy < 51)
        {
            self.img_starLeft.image = UIImage(named: "left_star")
            self.img_starMiddle.image = UIImage(named: "middle_star_gray")
            self.img_starRight.image = UIImage(named: "right_star_gray")
        }
        else if(accuracy < 81)
        {
            self.img_starLeft.image = UIImage(named: "left_star")
            self.img_starMiddle.image = UIImage(named: "middle_star")
            self.img_starRight.image = UIImage(named: "right_star_gray")
        }
        else
        {
            self.img_starLeft.image = UIImage(named: "left_star")
            self.img_starMiddle.image = UIImage(named: "middle_star")
            self.img_starRight.image = UIImage(named: "right_star")
        }
        
        if(MusicPlayer.shared.isSoundOn == true)
        {
            MusicPlayer.shared.playSoundEffect(soundEffect : "level_up")
        }
        //MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName : "level_up")
    }
    
    @IBAction func btnPlayAgainClicked(_ sender: Any)
    {
        
        if(self.isLevelChanged == true)
        {
            self.setForLevelChangedTrue()
            return
        }
        
        if(self.lblLevelNumber.isHidden == false)
        {
            self.lblAccuracy.isHidden = true
            self.lblRate.isHidden = true
            self.img_starMiddle.isHidden = true
            self.img_starLeft.isHidden = true
            self.img_starRight.isHidden = true
            self.lblLevelNumber.isHidden = true
        }
        
        
        self.btnLevelUpHome.isHidden = true
        self.btnLevelUpNext.isHidden = true
        self.lblTimeSpent.isHidden = true
        self.lblSmartScore.isHidden = true
        self.lblCorrectAnswers.isHidden = true
        self.lblLevelUPNumber.isHidden = true
        self.img_score_bar_top.isHidden = true
        self.img_score_progress.isHidden = true
        self.vw_progress.isHidden = true
        self.img_level_up.isHidden = true
        self.bubble_view.isHidden = false
        
        self.QueNo = 0
        self.NoOfUnAnswered = 0
        self.NoOfRightAnswers = 0
        
        self.vw_elements_no_1.isHidden = false
        self.vw_elements_no_2.isHidden = false
//        self.first_que_row1.isHidden = false
//        self.first_que_row2.isHidden = false
//        self.second_que_row1.isHidden = false
//        self.second_que_row2.isHidden = false
        self.vw_answer_container.isHidden = false
             
        self.vw_question_container.isHidden = false
        self.lbl_answer_text.textColor = UIColor.white //self.ColorArr[self.lastThemeNum - 1]
        
        self.setDataAccordingToTheme()
        
        self.startTime = Date()
        self.generateNextQuestion()
    }
    
    func createData(smartScore: Int, corrctAnswers: Int, timeSpent: Int){
        
        //As we know that container is set up in the AppDelegates so we need to refer that container.
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        //We need to create a context from this container
        let managedContext = appDelegate.persistentContainer.viewContext
        
        //Now let’s create an entity and new user records.
        let userEntity = NSEntityDescription.entity(forEntityName: "Game", in: managedContext)!
        
        //final, we need to add some data to our newly created record for each keys using
        //here adding 5 data with loop
        
       // for i in 1...5 {
            
            let user = NSManagedObject(entity: userEntity, insertInto: managedContext)
            user.setValue(smartScore, forKeyPath: "smartScore")
            user.setValue(corrctAnswers, forKeyPath: "correctAnswers")
            user.setValue(self.TotalQues, forKeyPath: "totalQuestions")
            user.setValue(timeSpent, forKeyPath: "totalTimeSpent")
        
            switch self.GameSign {
                case "+":
                    user.setValue("Addition", forKeyPath: "game")
                case "-":
                    user.setValue("Subtraction", forKeyPath: "game")
                case "X":
                    user.setValue("Multiplication", forKeyPath: "game")
                case "%":
                    user.setValue("Division", forKeyPath: "game")
                default:
                    break
            }
//            user.setValue("ankur\(i)@test.com", forKey: "email")
//            user.setValue("ankur\(i)", forKey: "password")
//        }

        //Now we have set all the values. The next step is to save them inside the Core Data
        
        do {
            try managedContext.save()
           
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
}


extension NSLayoutConstraint {
    func constraintWithMultiplier(_ multiplier: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem!, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: multiplier, constant: self.constant)
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
