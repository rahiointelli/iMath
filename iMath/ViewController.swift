//
//  ViewController.swift
//  iEduGame
//
//  Created by Intelli on 2021-09-22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tblScores: UITableView!
    
    var arCat : [String] = []
    var arInitial : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tblScores.register(UINib(nibName: "LeaderBoardTblCell", bundle: nil), forCellReuseIdentifier: "LeaderBoardTblCell")
        
        self.arCat.append("Jr.K")
        self.arCat.append("KinderGarten")
        self.arCat.append("Grade 1")
        self.arCat.append("Grade 2")
        self.arCat.append("Grade 3")
        self.arCat.append("Grade 4")
        
        self.arInitial.append("J")
        self.arInitial.append("K")
        self.arInitial.append("1")
        self.arInitial.append("2")
        self.arInitial.append("3")
        self.arInitial.append("4")
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arCat.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LeaderBoardTblCell", for: indexPath) as! LeaderBoardTblCell
        cell.selectionStyle = .none
        cell.lblName.text = self.arCat[indexPath.row]
        cell.lblNumber.text = self.arInitial[indexPath.row]
        
        return cell
    }


}

