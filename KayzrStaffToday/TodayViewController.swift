//
//  TodayViewController.swift
//  KayzrStaffToday
//
//  Created by Jens Leirens on 05/12/2017.
//  Copyright © 2017 Jens Leirens. All rights reserved.
//

import UIKit
import NotificationCenter
import KayzrStaff_Shared

class TodayViewController: UIViewController, NCWidgetProviding {
    @IBOutlet weak var todayTournamentsTable: UITableView!
    
    var tournaments: [Tournament] = [Tournament(id: 1, name: "Counter-strike:Global Offensive 5V5", nameShort: "CSGO 5V5",
                                               day:"Donderdag", date: "10/2/2017", hour: "17h20", moderator: "yannickverc"),
                                     Tournament(id: 2, name: "CV League of Legends 5V5", nameShort: "LoL 5V5", day: "Woensdag", date: "10/2/2017", hour: "17h20", moderator: "Mafken")]
    
    
    
    
}
extension TodayViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tournaments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tournamentTodayCell", for: indexPath) as! TournamentTodayCell
        cell.tournament = tournaments[indexPath.row]
        return cell
    }
}

