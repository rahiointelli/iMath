//
//  CategorySelectionVC.swift
//  iEduGame
//
//  Created by Intelli on 2021-09-22.
//

import UIKit

class CategorySelectionVC: UIViewController {
       
  
    @IBOutlet weak var btnAddition: UIButton!
    @IBOutlet weak var btnSubtraction: UIButton!
    @IBOutlet weak var cns_btnAdditionTop: NSLayoutConstraint!
    @IBOutlet weak var cns_btnAdditionLeft: NSLayoutConstraint!
    @IBOutlet weak var cns_btnSubtractionRight: NSLayoutConstraint!
    @IBOutlet weak var cns_btnMultiplyTop: NSLayoutConstraint!
    @IBOutlet weak var cns_btnAdditionWidth: NSLayoutConstraint!
    @IBOutlet weak var cns_btnAdditionHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_btnsettings_left: NSLayoutConstraint!
    @IBOutlet weak var cns_btnsettings_bottom: NSLayoutConstraint!
    @IBOutlet weak var cns_btnsettings_width: NSLayoutConstraint!
    @IBOutlet weak var cns_img_home_width: NSLayoutConstraint!
    @IBOutlet weak var cns_img_home_height: NSLayoutConstraint!
    @IBOutlet weak var cns_img_home_top: NSLayoutConstraint!
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            self.cns_btnAdditionTop.constant = UIScreen.main.bounds.size.height * (244/683)
            self.cns_btnAdditionLeft.constant = UIScreen.main.bounds.size.width * (87/512)
            self.cns_btnSubtractionRight.constant = UIScreen.main.bounds.size.width * (145/1024)
            self.cns_btnMultiplyTop.constant = UIScreen.main.bounds.size.height * (699/1366)
            self.cns_btnAdditionWidth.constant = UIScreen.main.bounds.size.width * (75/256)
            self.cns_btnAdditionHeight.constant = UIScreen.main.bounds.size.height * (78/683)
            self.cns_btnsettings_left.constant = UIScreen.main.bounds.size.width * (25/512)
            self.cns_btnsettings_bottom.constant = UIScreen.main.bounds.size.height * (39/1366)
            self.cns_btnsettings_width.constant = UIScreen.main.bounds.size.width * (65/1024)
            self.cns_img_home_width.constant = UIScreen.main.bounds.size.width * (137/200)
            self.cns_img_home_top.constant = UIScreen.main.bounds.size.height * (21/200)
            self.cns_img_home_height.constant = UIScreen.main.bounds.size.height * (83/160)
        }
        else
        {
            self.cns_btnAdditionTop.constant = UIScreen.main.bounds.size.height * (38/113)
            self.cns_btnAdditionLeft.constant = UIScreen.main.bounds.size.width * (4/75)
            self.cns_btnSubtractionRight.constant = self.cns_btnAdditionLeft.constant
            self.cns_btnMultiplyTop.constant = UIScreen.main.bounds.size.height * (107/226)
            self.cns_btnAdditionWidth.constant = UIScreen.main.bounds.size.width * (19/45)
            self.cns_btnAdditionHeight.constant = UIScreen.main.bounds.size.height * (25/226)
            self.cns_btnsettings_left.constant = UIScreen.main.bounds.size.width * (13/375)
            self.cns_btnsettings_bottom.constant = UIScreen.main.bounds.size.height * (22/565)
            self.cns_btnsettings_width.constant = UIScreen.main.bounds.size.width * (1/10)
            self.cns_img_home_width.constant = UIScreen.main.bounds.size.width * (305/343)
            self.cns_img_home_top.constant = UIScreen.main.bounds.size.height * (103/691)
            self.cns_img_home_height.constant = UIScreen.main.bounds.size.height * (301/691)
            //self.cns_img_home_width.constant * (981/1009)
            //UIScreen.main.bounds.size.height * (301/691)
        }
        
//        self.btnAddition.layer.borderWidth = 1
//        self.btnAddition.layer.borderColor = UIColor.yellow.cgColor
//        self.btnSubtraction.layer.borderWidth = 1
//        self.btnSubtraction.layer.borderColor = UIColor.yellow.cgColor
    }

    @IBAction func btnAdditionClicked(_ sender: Any)
    {
        let ADGameVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AdditionGameScreen") as! AdditionGameScreen
        ADGameVC.GameSign = "+"
        ADGameVC.arLevel = (UserDefaults.standard.value(forKey: "AdditionGameLevel") != nil) ? UserDefaults.standard.integer(forKey: "AdditionGameLevel") : 1
        appDelegate!.retrieveData(game : "Addition")
        self.navigationController?.pushViewController(ADGameVC, animated: false)
    }
    
    
    @IBAction func btnSubtractionClicked(_ sender: Any)
    {
        let ADGameVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AdditionGameScreen") as! AdditionGameScreen
        ADGameVC.GameSign = "-"
        ADGameVC.arLevel = (UserDefaults.standard.value(forKey: "SubtractionGameLevel") != nil) ? UserDefaults.standard.integer(forKey: "SubtractionGameLevel") : 1
        appDelegate!.retrieveData(game : "Subtraction")
        self.navigationController?.pushViewController(ADGameVC, animated: false)
    }
    
    @IBAction func btnMultiplicationClicked(_ sender: Any)
    {
        let ADGameVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AdditionGameScreen") as! AdditionGameScreen
        ADGameVC.GameSign = "X"
        ADGameVC.arLevel = (UserDefaults.standard.value(forKey: "MultiplicationGameLevel") != nil) ? UserDefaults.standard.integer(forKey: "MultiplicationGameLevel") : 1
        appDelegate!.retrieveData(game : "Multiplication")
        self.navigationController?.pushViewController(ADGameVC, animated: false)
    }
    
    @IBAction func btnDivisionClicked(_ sender: Any)
    {
        let ADGameVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AdditionGameScreen") as! AdditionGameScreen
        ADGameVC.GameSign = "%"
        ADGameVC.arLevel = (UserDefaults.standard.value(forKey: "DivionGameLevel") != nil) ? UserDefaults.standard.integer(forKey: "DivionGameLevel") : 1
        appDelegate!.retrieveData(game : "Division")
        self.navigationController?.pushViewController(ADGameVC, animated: false)
    }
    
    @IBAction func btnSettingsClicked(_ sender: Any)
    {
        let ADGameVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
        self.navigationController?.pushViewController(ADGameVC, animated: false)
    }
}

