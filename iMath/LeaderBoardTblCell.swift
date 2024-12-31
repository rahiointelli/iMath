//
//  NewsListTblCell.swift
//  Richmond Sentinel
//
//  Created by Intelli on 2019-01-21.
//  Copyright © 2019 Intelli. All rights reserved.
//

import UIKit

class LeaderBoardTblCell: UITableViewCell {

    
    @IBOutlet weak var imgPic: UIImageView!
    @IBOutlet weak var imgSteps: UIImageView!
    @IBOutlet weak var lblSteps: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblNumberWidth : NSLayoutConstraint!
    @IBOutlet weak var lblNumber : UILabel!
    @IBOutlet weak var vw_container : UIView!
    @IBOutlet weak var lblPaddingTop : NSLayoutConstraint!
    @IBOutlet weak var lblPaddingBottom : NSLayoutConstraint!
    @IBOutlet weak var imgUserImageHeight : NSLayoutConstraint!
    @IBOutlet weak var imgStepsHeight : NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
//        self.lblNumberWidth.constant = 37//20.5
//        self.imgUserImageHeight.constant = 35
//        self.imgStepsHeight.constant = 26
    
        
//        if(UIScreen.main.bounds.size.height == 568)
//        {
//            self.lblNumber.font = UIFont(name: "Helvetica-Bold", size:25)
//            self.lblName.font = UIFont(name: "Helvetica", size:13)
//            self.lblSteps.font = UIFont(name: "Helvetica", size:13)
//        }
        
        self.imgPic.layer.cornerRadius = self.imgUserImageHeight.constant/2
        // Initialization code
    }    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
