//
//  SignUpVC.swift
//  iTask
//
//  Created by Intelli on 2019-08-19.
//  Copyright © 2019 Intelli. All rights reserved.
//

import UIKit
import CropViewController
import MobileCoreServices

class SignUpVC: UIViewController, CropViewControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var txtEmailId: UITextField!
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var vw_txtEmailContainer: UIView!
    @IBOutlet weak var vw_txtFullNameContainer: UIView!
    @IBOutlet weak var cns_LogoProfileWidth: NSLayoutConstraint!
    @IBOutlet weak var cns_leftToView: NSLayoutConstraint!
    @IBOutlet weak var cns_txtHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_iconHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_iconLeft: NSLayoutConstraint!
    @IBOutlet weak var cns_backWidth: NSLayoutConstraint!
    @IBOutlet weak var cns_goWidth: NSLayoutConstraint!
    @IBOutlet weak var cns_txtLeft: NSLayoutConstraint!
    @IBOutlet weak var cns_createAccHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_createBtmHeight: NSLayoutConstraint!
    @IBOutlet weak var cns_txtContainerTop: NSLayoutConstraint!
    @IBOutlet weak var cns_goTop: NSLayoutConstraint!
    @IBOutlet weak var lblErrorMessage: UILabel!
    @IBOutlet weak var act_indicator: UIActivityIndicatorView!
    @IBOutlet weak var btnProfilePic: UIButton!
    @IBOutlet weak var btnProfileBottomIcon: UIButton!
    
    let imagePicker = UIImagePickerController()
    var SelectedImage : Data? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imagePicker.delegate = self
        
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            self.cns_leftToView.constant = (35*UIScreen.main.bounds.size.width)/320
            self.cns_LogoProfileWidth.constant = (72*UIScreen.main.bounds.size.width)/320
            self.cns_txtHeight.constant = 70
            self.cns_iconHeight.constant = 35
            self.cns_iconLeft.constant = (self.cns_txtHeight.constant/2) - 10
            self.cns_backWidth.constant = 22
            self.cns_goWidth.constant = 84
            self.cns_txtLeft.constant = 14
            self.cns_createAccHeight.constant = 60
            self.cns_createBtmHeight.constant = 4
            self.cns_txtContainerTop.constant = 60
            self.cns_goTop.constant = 60
        }
        else
        {
            self.cns_leftToView.constant = (27*UIScreen.main.bounds.size.width)/320
            self.cns_LogoProfileWidth.constant = (92*UIScreen.main.bounds.size.width)/320
            self.cns_txtHeight.constant = (35*UIScreen.main.bounds.size.width)/320
            self.cns_iconHeight.constant = (20*self.cns_txtHeight.constant)/40
            self.cns_iconLeft.constant = (self.cns_txtHeight.constant/2) - 8
            self.cns_goWidth.constant = (44*UIScreen.main.bounds.size.width)/320
        }
        
        self.btnProfilePic.layer.cornerRadius = self.cns_LogoProfileWidth.constant/2
        self.btnProfileBottomIcon.layer.cornerRadius = self.btnProfileBottomIcon.frame.size.width/2
        
        self.vw_txtEmailContainer.layer.cornerRadius = self.cns_txtHeight.constant/2
        self.vw_txtFullNameContainer.layer.cornerRadius = self.cns_txtHeight.constant/2
        
        self.txtEmailId.attributedPlaceholder = NSAttributedString(string: "Email",
                                                                   attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,NSAttributedString.Key.font:UIFont(name: "Helvetica", size: (UIDevice.current.userInterfaceIdiom == .pad) ? 20 : 15)!])
        self.txtFullName.attributedPlaceholder = NSAttributedString(string: "Name",
                                                                   attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,NSAttributedString.Key.font:UIFont(name: "Helvetica", size: (UIDevice.current.userInterfaceIdiom == .pad) ? 20 : 15)!])
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSubmit_Clicked(_ sender: Any)
    {
        self.view.endEditing(true)
        if(self.txtFullName.text?.trimmingCharacters(in: .whitespacesAndNewlines).count == 0)
        {
            //self.showMessageAlert(message: "Please enter Full name.")
            self.lblErrorMessage.text = "Please enter Full name."
        }
        else if(self.txtEmailId.text?.trimmingCharacters(in: .whitespacesAndNewlines).count == 0)
        {
            //self.showMessageAlert(message: "Please enter EmailId.")
            self.lblErrorMessage.text = "Please enter Email ID."
        }
//        else if(!self.txtEmailId.isValidEmail())
//        {
//            //self.showMessageAlert(message: "Please enter valid EmailId.")
//            self.lblErrorMessage.text = "Please enter valid Email ID."
//        }
        else
        {
//            self.view.isUserInteractionEnabled = false
//            self.act_indicator.startAnimating()
//            self.CallRegisterService()
        }
    }
    
//    func CallRegisterService()
//    {
//        let params : [String : Any] = [RegisterParam.keyName : self.txtFullName.text!, RegisterParam.keyEmailId : self.txtEmailId.text!, RegisterParam.keyPassword : self.txtPassword.text!, RegisterParam.keyType : "\(constTypeiOS)", RegisterParam.keyDeviceType : "\(currentDeviceType)"]
//
//        //NetworkUtilities.shared.makePOSTRequest(with: API.baseURL + API.register_api, parameters: params) { (response) in
//
//        NetworkUtilities.shared.makePOSTwithMultipartFormDataRequest(with: API.baseURL + API.register_api, fromWhere: "", parameters: params, imageParameters: [:], VideoParameters : [:], DocumentParameters: [:], ImgData: self.SelectedImage, VideoData: nil) { (response) in
//
//            self.view.isUserInteractionEnabled =  true
//            self.act_indicator.stopAnimating()
//            if (response.error == nil)
//            {
//                if(response.result[MainResponseCodeConstant.keyResponseCode].intValue == MainResponseCodeConstant.keyResponseCodeOne)
//                {
//                    let vc : EnterVCodeVC = StoryBoardConstant.MAIN_STORYBOARD.instantiateViewController(withIdentifier: "EnterVCodeVC") as! EnterVCodeVC
//                    vc.emailId = self.txtEmailId.text!
//                    self.navigationController?.pushViewController(vc, animated: false)
//                    self.clearAllData()
//                }
//                else
//                {
//                    //self.showMessageAlert(message: response.result[MainResponseCodeConstant.keyResponseText].stringValue)
//                    self.lblErrorMessage.text = response.result[MainResponseCodeConstant.keyResponseText].stringValue
//                }
//            }
//            else
//            {
//                //self.showMessageAlert(message: response.error!.localizedDescription)
//                self.lblErrorMessage.text = response.error!.localizedDescription
//            }
//        }
//    }
    
    @IBAction func btnBack_Clicked(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: false)
    }
    
    
    func clearAllData()
    {
//        self.txtEmailId.text = ""
//        self.txtPassword.text = ""
//        self.txtFullName.text = ""
//        self.txtConfirmPassword.text = ""
        self.view.endEditing(true)
//        self.lblErrorMessage.text = ""
    }
    
    @IBAction func btnProfilePic_Clicked(_ sender: Any)
    {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

            let cmAction  = UIAlertAction(title: "Camera", style: .default , handler:{ (UIAlertAction)in

                   if (UIImagePickerController.isSourceTypeAvailable(.camera))
                   {
                       self.imagePicker.allowsEditing = false
                       self.imagePicker.sourceType = .camera
                       self.imagePicker.mediaTypes = [kUTTypeImage] as [String]
                       self.present(self.imagePicker, animated: true, completion: nil)
                   }

               })
           alert.addAction(cmAction)

           alert.addAction(UIAlertAction(title: "Photo & Video Library", style: .default , handler:{ (UIAlertAction)in
                self.imagePicker.allowsEditing = false
                self.imagePicker.sourceType = .photoLibrary
                self.imagePicker.mediaTypes = [kUTTypeImage] as [String]
                self.present(self.imagePicker, animated: true, completion: nil)

            }))
        
          if(self.SelectedImage != nil)
          {
                alert.addAction(UIAlertAction(title: "No Image", style: .default , handler:{ (UIAlertAction)in
                    self.SelectedImage = nil
                    self.btnProfileBottomIcon.isHidden = true
                    self.btnProfilePic.setImage(UIImage(named: "icon_profile"), for: .normal)
                }))
          }
       
           alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:{ (UIAlertAction)in
               print("User click Dismiss button")
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
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        let mediaType = info[UIImagePickerController.InfoKey.mediaType] as AnyObject
        
        if mediaType as! String == kUTTypeImage as String
        {
            if (info[UIImagePickerController.InfoKey.originalImage] as? UIImage) != nil
            {

                 let cImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
  
//                var sImage = cImage
//                if(picker.sourceType == .camera)
//                {
//                    sImage = cImage.scaleAndRotateImages()!
//                    self.SelectedImage = (sImage.jpegData(compressionQuality:1)!)
//                }
//                else
//                {
                        let selectedImage = (cImage.jpegData(compressionQuality:1)!)
//                }
//
//               if(Double(selectedImage.count/1000000) > 5)
//               {
//                   self.showMessageAlert(message: "Image size must be less than 5 MB.")
//               }
//               else
//               {
                    let cropController = CropViewController(croppingStyle: .default, image: cImage)
                    //cropController.modalPresentationStyle = .fullScreen
                    cropController.delegate = self
                    cropController.aspectRatioPreset = .presetSquare
                    cropController.aspectRatioPickerButtonHidden = true
                    cropController.rotateButtonsHidden = true
                    cropController.rotateClockwiseButtonHidden = true
                    cropController.resetButtonHidden = true
                    
                    if picker.sourceType == .camera {
                          picker.dismiss(animated: true, completion: {
                          })
                          self.present(cropController, animated: true, completion: nil)
                    } else {
                        picker.pushViewController(cropController, animated: true)
                    }
//                }
            }
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    public func cropViewController(_ cropViewController: CropViewController, didCropToImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
        updateImageViewWithImage(image, fromCropViewController: cropViewController)
    }
    
    public func cropViewController(_ cropViewController: CropViewController, didCropToCircularImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
        updateImageViewWithImage(image, fromCropViewController: cropViewController)
    }
    
    public func updateImageViewWithImage(_ image: UIImage, fromCropViewController cropViewController: CropViewController) {
        self.btnProfilePic.setImage(image, for: .normal)
        self.btnProfileBottomIcon.isHidden = false
       // layoutImageView()
        cropViewController.dismiss(animated: true, completion: nil)
        self.SelectedImage = image.jpegData(compressionQuality:1)
    }

}
