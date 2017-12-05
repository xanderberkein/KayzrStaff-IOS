//
//  TournamentTodayCell.swift
//  KayzrStaffToday
//
//  Created by Jens Leirens on 05/12/2017.
//  Copyright © 2017 Jens Leirens. All rights reserved.
//

import UIKit
import KayzrStaff_Shared

class TournamentTodayCell : UITableViewCell {
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starthourLabel: UILabel!
    
    
    
    var tournament: Tournament! {
        didSet{
            nameLabel.text = tournament.name
            starthourLabel.text = "Starts at:" + tournament.hour
            
            if tournament.nameShort.contains("CSGO"){
                gameImage.image = #imageLiteral(resourceName: "csgoToday")
            } else if tournament.nameShort.contains("LoL"){
                gameImage.image = #imageLiteral(resourceName: "LOLToday")
            } else if tournament.nameShort.contains("RL") {
                gameImage.image = #imageLiteral(resourceName: "RLToday")
            } else if tournament.nameShort.contains("HS") {
                gameImage.image = #imageLiteral(resourceName: "HSToday")
            } else if tournament.nameShort.contains("FIFA") {
                gameImage.image = #imageLiteral(resourceName: "FifaToday")
            }else {
                //gameImage.image = #imageLiteral(resourceName: "icon")
            }
        }
    }
}

