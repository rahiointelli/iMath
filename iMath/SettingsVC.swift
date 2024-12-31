//
//  SettingsVC.swift
//  iEduGame
//
//  Created by Intelli on 2022-03-30.
//

import UIKit
import MessageUI
import Toast_Swift
//
class SettingsVC: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var cns_img_level_up_Width: NSLayoutConstraint!
    @IBOutlet weak var sw_bgMusic: UIButton!
    @IBOutlet weak var sw_Sound: UIButton!
    @IBOutlet weak var btn_close: UIButton!
    @IBOutlet weak var img_settings: UIImageView!
    @IBOutlet weak var stack_left: NSLayoutConstraint!
    @IBOutlet weak var stack_right: NSLayoutConstraint!
    @IBOutlet weak var stack_top: NSLayoutConstraint!
    @IBOutlet weak var stack_height: NSLayoutConstraint!
    @IBOutlet weak var cns_img_settings_top: NSLayoutConstraint!
    @IBOutlet weak var cns_img_settings_left: NSLayoutConstraint!
    @IBOutlet weak var cns_img_settings_bottom: NSLayoutConstraint!
    @IBOutlet weak var cns_btn_close_width: NSLayoutConstraint!
    @IBOutlet weak var cns_btn_close_height: NSLayoutConstraint!
    @IBOutlet weak var cns_btn_switch_right: NSLayoutConstraint!
    @IBOutlet weak var cns_btn_switch_height: NSLayoutConstraint!
    @IBOutlet weak var cns_btn_switch_width: NSLayoutConstraint!
    @IBOutlet weak var cns_music_top: NSLayoutConstraint!
    @IBOutlet weak var cns_sound_top: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.btn_close.layer.borderColor = UIColor.red.cgColor
//        self.btn_close.layer.borderWidth = 1.0

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
//            if(UIScreen.main.bounds.size.height <= 736) //667
//            {
//                self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (65/75) //(186/225) //(65/75)
//            }
//            else
//            {
//                self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (71/75) //(212/225)//(71/75)
//            }
            self.cns_img_level_up_Width.constant = UIScreen.main.bounds.size.width * (62/75)
            self.cns_img_settings_top.constant = UIScreen.main.bounds.size.height * (121/689)
            self.cns_img_settings_left.constant = UIScreen.main.bounds.size.width * (36/1125)
            self.cns_img_settings_bottom.constant = UIScreen.main.bounds.size.height * (20/565)
        }


        print("value of music playing is \(MusicPlayer.shared.isMusicPlaying)")
        // Do any additional setup after loading the view.
        self.sw_bgMusic.setImage(UIImage(named: MusicPlayer.shared.isMusicPlaying ? "img_on" : "img_off"), for: .normal)
        self.sw_Sound.setImage(UIImage(named: MusicPlayer.shared.isSoundOn ? "img_on" : "img_off"), for: .normal)
    }
    
    override func viewDidLayoutSubviews() {
//        self.stack_left.constant = self.cns_img_level_up_Width.constant * (37/213)
//        self.stack_right.constant = -self.stack_left.constant
        
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            self.stack_top.constant = self.img_settings.frame.size.height * (2/7)
            self.stack_height.constant = self.img_settings.frame.size.height * (354/1169)
            self.cns_btn_close_width.constant = self.img_settings.frame.size.width * (7/33)
            self.cns_btn_close_height.constant = self.img_settings.frame.size.height * (50/1169)
            self.cns_btn_switch_right.constant = -(self.btn_close.frame.size.width * (47/107))
            self.cns_music_top.constant = self.img_settings.frame.size.height * (117/1169)
            self.cns_sound_top.constant = self.img_settings.frame.size.height * (233/1169)
            self.cns_btn_switch_height.constant = self.img_settings.frame.size.height * (41/698)
        }
        else
        {
            
            self.stack_top.constant = self.img_settings.frame.size.height * (33/137)
            self.stack_height.constant = self.img_settings.frame.size.height * (37/137)
            self.cns_btn_close_width.constant = self.img_settings.frame.size.width * (255/977)
            self.cns_btn_close_height.constant = self.img_settings.frame.size.height * (75/1781)
            self.cns_btn_switch_right.constant = -(self.btn_close.frame.size.width * (29/78))
            self.cns_music_top.constant = self.img_settings.frame.size.height * (138/1781)
            self.cns_sound_top.constant = self.img_settings.frame.size.height * (292/1781)
            self.cns_btn_switch_height.constant = self.img_settings.frame.size.height * (7/135)
        }
        self.cns_btn_switch_width.constant = self.cns_btn_switch_height.constant * (1024/415)
        
    }
    
    @IBAction func MusicSliderValueChanged(_ sender: Any) {
        let slider = sender as! UISlider
        MusicPlayer.shared.setMusicVolume(val: slider.value)
    }
    
    @IBAction func MusicValueChanged(_ sender: Any) {
        
        if(MusicPlayer.shared.isMusicPlaying == true)
        {
            MusicPlayer.shared.stopBackgroundMusic()
            UserDefaults.standard.setValue(false, forKey: "GameBgMusicSound")
            self.sw_bgMusic.setImage(UIImage(named:"img_off"), for: .normal)
        }
        else
        {
            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName : "bg_music")
            UserDefaults.standard.setValue(true, forKey: "GameBgMusicSound")
            self.sw_bgMusic.setImage(UIImage(named:"img_on"), for: .normal)
        }
        
        UserDefaults.standard.synchronize()
    }
    
    @IBAction func SoundValueChanged(_ sender: Any) {
        
        if(MusicPlayer.shared.isSoundOn == true)
        {
            UserDefaults.standard.setValue(false, forKey: "GameSound")
            self.sw_Sound.setImage(UIImage(named:"img_off"), for: .normal)
        }
        else
        {
            UserDefaults.standard.setValue(true, forKey: "GameSound")
            self.sw_Sound.setImage(UIImage(named:"img_on"), for: .normal)
        }

        MusicPlayer.shared.isSoundOn = !MusicPlayer.shared.isSoundOn
        UserDefaults.standard.synchronize()
    }
    
    @IBAction func btnBackClicked(_ sender: Any)
    {
        self.navigationController?.popToViewController((self.navigationController?.viewControllers[1])!, animated: true)
        //popToRootViewController(animated: true)
    }
    
    @IBAction func ViewReportClicked(_ sender: Any)
    {
        print("report clicked")
        let ADGameVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ReportVC") as! ReportVC
        self.navigationController?.pushViewController(ADGameVC, animated: false)
    }
    
    @IBAction func ShareToSocialMedias(_ sender: Any)
    {
        let shareURL =  "https://apps.apple.com/us/app/6443464241?ls=1&mt=8"//https://google.com"
        let myWebsite = NSURL(string: shareURL)//!.ChangeSpacetoPer20())
        let shareAll = [myWebsite]
        let activityViewController = UIActivityViewController(activityItems: shareAll as [Any], applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    @IBAction func SendMail(_ sender: Any)
    {
       if MFMailComposeViewController.canSendMail()
       {
           let mail = MFMailComposeViewController()
           mail.setToRecipients(["developer@intellidt.com"])//[AppDelegate.sharedDelegate().ContactEmailId])
           mail.setMessageBody("", isHTML: true)
           mail.mailComposeDelegate = self
           
           self.present(mail, animated: true, completion: nil)
       }
       else
       {
           let alert = UIAlertController(title: "", message: "Mail is not configured.", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "Ok", style: .default, handler:{ (UIAlertAction)in
               print("User clicked Ok button")
           }))
           
           DispatchQueue.main.async
           {
               if ( UIDevice.current.model.range(of: "iPad") != nil)
               {
                   alert.popoverPresentationController?.sourceView = self.view
                   alert.popoverPresentationController?.sourceRect = self.view.bounds
                   self.present(alert, animated: true, completion: nil)
               }
               else
               {
                   self.present(alert, animated: true, completion: nil)
               }
           }
           
           print("email is not configured.")
           //Toast.show(title: "", text: "Mail is not configured.", type: .error)
       }
   }
    
    
   @IBAction func RateApp(_ sender: Any)
   {
       let url = URL(string: "itms-apps:itunes.apple.com/us/app/apple-store/id\("6443464241")?mt=8&action=write-review")!
//1471479801//1592062541//6443464241
       if #available(iOS 10.0, *) {
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
       } else {
           UIApplication.shared.openURL(url) // openURL(_:) is deprecated from iOS 10.
       }
   }
   
   func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
       controller.dismiss(animated: true)
   }
    
}
